<?php

namespace App\Http\Controllers;

use App\Http\Requests\StudentsRequest;
use App\Models\Classroom;
use App\Models\Role;
use App\Models\Student;
use App\Models\User;


class StudentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Student::class);

        $students = Student::select('id', 'user_id', 'classroom_id')
            ->when(auth()->user()->role_id === Role::TEACHER, function($query){
                $query->whereHas('classroom', function($classroom){
                    $classroom->whereHas('timetables', function($timetables){
                        $timetables->where('teacher_id', auth()->user()->teacher->id);
                    });
                });
            })
            ->paginate(10);

        return view('pages.students.index', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', Student::class);

        $users = User::select('id', 'name')
            ->whereNotIn('id', Student::pluck('user_id'))
            ->where('role_id', Role::STUDENT)
            ->orderBy('name')
            ->get();
            
        $classrooms = Classroom::select('id', 'classroom_name')->get();

        return view('pages.students.create', compact('users', 'classrooms'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\TeachersReques  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StudentsRequest $request)
    {
        $this->authorize('create', Student::class);

        $create = Student::create($request->validated());

        return redirect()->route('students.index')->with('success', 'Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Student::class);

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
        $this->authorize('update', Student::class);

        $student = Student::select('id', 'user_id', 'classroom_id')->findOrFail($id);

        $users = User::select('id', 'name')
            ->whereNotIn('id', Student::whereNot('id', $id)->pluck('user_id'))
            ->where('role_id', Role::STUDENT)
            ->orderBy('name')
            ->get();
        
        $classrooms = Classroom::select('id', 'classroom_name')->orderBy('classroom_name')->get();

        return view('pages.students.edit', compact('student', 'users', 'classrooms'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\TeachersReques  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StudentsRequest $request, $id)
    {
        $this->authorize('update', Student::class);

        $update = Student::findOrFail($id)->update($request->validated());

        return redirect()->route('students.index')->with('success', 'Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Student::class);

        $destroy = Student::destroy($id);

        return redirect()->back()->with('success', 'Deleted');
    }
}
