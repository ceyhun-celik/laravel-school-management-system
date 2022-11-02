<?php

namespace App\Http\Controllers;

use App\Http\Requests\TeachersRequest;
use App\Models\Lesson;
use App\Models\Role;
use App\Models\Teacher;
use App\Models\User;


class TeachersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Teacher::class);

        $teachers = Teacher::paginate(10);

        return view('pages.teachers.index', compact('teachers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', Teacher::class);

        $users = User::select('id', 'name')
            ->whereNotIn('id', Teacher::pluck('user_id'))
            ->where('role_id', Role::TEACHER)
            ->orderBy('name')
            ->get();
        $lessons = Lesson::select('id', 'lesson_name')->get();

        return view('pages.teachers.create', compact('users', 'lessons'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\TeachersReques  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TeachersRequest $request)
    {
        $this->authorize('create', Teacher::class);

        $create = Teacher::create($request->validated());

        return redirect()->route('teachers.index')->with('success', 'Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Teacher::class);

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
        $this->authorize('update', Teacher::class);

        $teacher = Teacher::select('id', 'user_id', 'lesson_id')->findOrFail($id);

        $users = User::select('id', 'name')
            ->whereNotIn('id', Teacher::whereNot('id', $id)->pluck('user_id'))
            ->where('role_id', Role::TEACHER)
            ->orderBy('name')
            ->get();
        
        $lessons = Lesson::select('id', 'lesson_name')->orderBy('lesson_name')->get();

        return view('pages.teachers.edit', compact('teacher', 'users', 'lessons'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\TeachersReques  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TeachersRequest $request, $id)
    {
        $this->authorize('update', Teacher::class);

        $update = Teacher::findOrFail($id)->update($request->validated());

        return redirect()->route('teachers.index')->with('success', 'Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Teacher::class);

        $destroy = Teacher::destroy($id);

        return redirect()->back()->with('success', 'Deleted');
    }
}
