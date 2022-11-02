<?php

namespace App\Http\Controllers;

use App\Http\Requests\LessonsRequest;
use App\Models\Lesson;

class LessonsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', Lesson::class);

        $lessons = Lesson::paginate(10);

        return view('pages.lessons.index', compact('lessons'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', Lesson::class);

        return view('pages.lessons.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\LessonsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(LessonsRequest $request)
    {
        $this->authorize('create', Lesson::class);

        $create = Lesson::create($request->validated());

        return redirect()->route('lessons.index')->with('success', 'Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', Lesson::class);

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
        $this->authorize('update', Lesson::class);

        $lesson = Lesson::findOrFail($id);

        return view('pages.lessons.edit', compact('lesson'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\LessonsRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(LessonsRequest $request, $id)
    {
        $this->authorize('update', Lesson::class);

        $update = Lesson::findOrFail($id)->update($request->validated());

        return redirect()->route('lessons.index')->with('success', 'Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', Lesson::class);

        $destroy = Lesson::destroy($id);

        return redirect()->back()->with('success', 'Deleted');
    }
}
