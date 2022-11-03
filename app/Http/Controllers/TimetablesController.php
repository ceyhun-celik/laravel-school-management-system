<?php

namespace App\Http\Controllers;

use App\Http\Requests\TimetablesRequest;
use App\Jobs\UpdateScoresFromTimetableJob;
use App\Mail\TeacherTimetableCreateMail;
use App\Models\Classroom;
use App\Models\Role;
use App\Models\Teacher;
use App\Models\Timetable;
use Illuminate\Support\Facades\Mail;

class TimetablesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Timetable::class);

        $timetables = Timetable::select('id', 'classroom_id', 'teacher_id')
            ->when(auth()->user()->role_id === Role::TEACHER, function($query){
                $query->where('teacher_id', auth()->user()->teacher->id);
            })
            ->whereStatus('active')
            ->paginate(10);

        return view('pages.timetables.index', compact('timetables'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('view', Timetable::class);

        $classrooms = Classroom::select('id', 'classroom_name')->get();
        $teachers = Teacher::select('id', 'user_id')->get();

        return view('pages.timetables.create', compact('classrooms', 'teachers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\TimetablesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TimetablesRequest $request)
    {
        $this->authorize('create', Timetable::class);

        $exists = Timetable::select('id')->where($request->validated())->first();

        if(! $exists){
            $create = Timetable::create($request->validated());

            Mail::to($create->teacher->user->email)
                ->send(new TeacherTimetableCreateMail($create));
    
            return redirect()->route('timetables.index')->with('success', 'Created');
        } else{
            return redirect()->back()->withErrors(['This Teacher already have timetable of this classroom']);
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Timetable::class);

        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->authorize('update', Timetable::class);

        $timetable = Timetable::select('id', 'classroom_id')
            ->with(['classroom' => function($classroom) use($id){
                $classroom->with(['students' => function($students) use($id){
                    $students->with(['score' => function($score) use($id){
                        $score->where('timetable_id', $id);
                    }]);
                }]);
            }])
            ->where('teacher_id', auth()->user()->teacher->id)
            ->whereStatus('active')
            ->findOrFail($id);

        return view('pages.timetables.edit', compact('timetable'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\TimetablesRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TimetablesRequest $request, $id)
    {
        $this->authorize('update', Timetable::class);

        extract($request->validated());

        foreach ($student_id as $key => $value) {
            $data = [
                'timetable_id' => $id,
                'student_id' => $student_id[$key],
                'midterm' => $midterm[$key],
                'final' => $final[$key],
                'result' => ($midterm[$key] + $final[$key]) / 2
            ];

            dispatch(new UpdateScoresFromTimetableJob($data));
        }

        return redirect()->route('timetables.index')->with('success', 'In Progress.. Please check 20-30 seconds later.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Timetable::class);

        $destroy = Timetable::destroy($id);

        return redirect()->back()->with('success', 'Deleted');
    }
}
