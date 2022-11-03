<?php

namespace App\Http\Controllers;

use App\Http\Requests\SystemsRequest;
use App\Models\System;

class SystemsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewAny', System::class);

        $system = System::first();

        return view('pages.systems.index', compact('system'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create', System::class);

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\SystemsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SystemsRequest $request)
    {
        $this->authorize('create', System::class);

        $update = System::updateOrCreate(
            ['id' => 1],
            ['lock_timetables' => $request->lock_timetables]
        );

        return redirect()->back()->with('success', 'Changed');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('view', System::class);

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
        $this->authorize('update', System::class);

        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\SystemsRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SystemsRequest $request, $id)
    {
        $this->authorize('update', System::class);

        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('delete', System::class);

        //
    }
}
