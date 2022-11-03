<?php

namespace App\Http\Controllers;

use App\Http\Requests\ScoresRequest;
use App\Models\Role;
use App\Models\Score;

class ScoresController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Score::class);

        $scores = Score::select('id', 'timetable_id', 'student_id', 'midterm', 'final', 'result')
            ->when(auth()->user()->role_id === Role::TEACHER, function($query){
                $query->whereHas('timetable', function($timetable){
                    $timetable->where('teacher_id', auth()->user()->teacher->id)->whereStatus('active');
                });
            })
            ->when(auth()->user()->role_id === Role::STUDENT, function($query){
                $query->where('student_id', auth()->user()->student->id);
            })
            ->paginate(10);

        return view('pages.scores.index', compact('scores'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', Score::class);

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\ScoresRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ScoresRequest $request)
    {
        $this->authorize('create', Score::class);

        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Score::class);

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
        $this->authorize('update', Score::class);

        $score = Score::select('id', 'timetable_id', 'midterm', 'final')
            ->whereHas('timetable', function($timetable){
                $timetable->where('teacher_id', auth()->user()->teacher->id)->whereStatus('active');
            })
            ->find($id);

        return view('pages.scores.edit', compact('score'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\ScoresRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ScoresRequest $request, $id)
    {
        $this->authorize('update', Score::class);

        $request = $request->validated();
        $request['result'] = ($request['midterm'] + $request['final']) / 2;

        $update = Score::find($id)->update($request);

        return redirect()->route('scores.index')->with('success', 'Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Score::class);

        //
    }
}
