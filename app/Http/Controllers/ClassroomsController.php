<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClassroomsRequest;
use App\Models\Classroom;
use App\Models\Role;

class ClassroomsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Classroom::class);

        $classrooms = Classroom::select('id', 'classroom_name')
            ->when(auth()->user()->role_id === Role::TEACHER, function($query){
                $query->whereHas('timetables', function($timetables){
                    $timetables->where('teacher_id', auth()->user()->teacher->id);
                });
            })
            ->paginate(10);

        return view('pages.classrooms.index', compact('classrooms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', Classroom::class);

        return view('pages.classrooms.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\ClassroomsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ClassroomsRequest $request)
    {
        $this->authorize('create', Classroom::class);

        $create = Classroom::create($request->validated());

        return redirect()->route('classrooms.index')->with('success', 'Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Classroom::class);

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
        $this->authorize('update', Classroom::class);

        $classroom = Classroom::findOrFail($id);

        return view('pages.classrooms.edit', compact('classroom'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\ClassroomsRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ClassroomsRequest $request, $id)
    {
        $this->authorize('update', Classroom::class);

        $update = Classroom::findOrFail($id)->update($request->validated());

        return redirect()->route('classrooms.index')->with('success', 'Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Classroom::class);

        $destroy = Classroom::destroy($id);

        return redirect()->back()->with('success', 'Deleted');
    }
}
