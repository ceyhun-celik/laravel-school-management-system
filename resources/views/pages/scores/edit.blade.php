<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Timetable') }}: {{ $score->timetable->classroom->classroom_name }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto mt-6 sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <form action="{{ route('scores.update', $score->id) }}" method="post" class="p-6 bg-white border-b border-gray-200"> @csrf @method('PUT')
                <div class="mb-4">
                    <label class="form-label inline-block mb-2 text-gray-700">{{ $score->timetable->teacher->lesson->lesson_name }}</label>
                    <div class="flex">
                        <input type="text" name="midterm" value="{{ old('midterm') ?? $score->midterm }}" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" placeholder="Midterm"/>
                        <input type="text" name="final" value="{{ old('final') ?? $score->final }}" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" placeholder="Final"/>
                    </div>
                </div>

                <div class="flex justify-end">
                    <button type="submit" class="inline-block px-6 py-2.5 mb-1 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Done</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>