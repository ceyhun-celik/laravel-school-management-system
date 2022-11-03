<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Scores') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-4">
        <div class="flex flex-col mb-4">
            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
                    <div class="overflow-hidden">
                        <table class="min-w-full">
                            <thead class="bg-white border-b">
                                <tr>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">#</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Lesson Name</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Teacher Name</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Student Name</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Midterm</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Final</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Result</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($scores as $score)
                                    <tr class="{{ $loop->odd ? 'bg-gray-100' : 'bg-white' }} border-b">
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">{{ $score->id }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->timetable->teacher->lesson->lesson_name }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->timetable->teacher->user->name }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->student->user->name }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->midterm }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->final }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $score->result  }}</td>
                                        <td>
                                            @can('teacher')
                                                <div class="flex items-center justify-end gap-3 mr-3">
                                                    <a href="{{ route('scores.edit', $score->id) }}" class="inline-block px-6 py-2.5 bg-purple-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-purple-700 hover:shadow-lg focus:bg-purple-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-purple-800 active:shadow-lg transition duration-150 ease-in-out">Edit</a>
                                                </div>
                                            @endcan
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="8" class="text-center text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">No record found</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
        {{ $scores->render() }}
    </div>
</x-app-layout>
