<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Students') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-4">
        <div class="flex flex-col mb-4">
            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
                    <div class="overflow-hidden">
                        @can('principal')
                            <div class="flex justify-end mb-4">
                                <a href="{{ route('students.create') }}" class="inline-block px-6 py-2.5 mb-1 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Create</a>
                            </div>
                        @endcan

                        <table class="min-w-full">
                            <thead class="bg-white border-b">
                                <tr>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">#</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Name</th>
                                    <th scope="col" class="w-1 text-sm font-medium text-gray-900 px-6 py-4 text-left whitespace-nowrap">Classroom Name</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($students as $student)
                                    <tr class="{{ $loop->odd ? 'bg-gray-100' : 'bg-white' }} border-b">
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">{{ $student->id }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $student->user->name }}</td>
                                        <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">{{ $student->classroom->classroom_name }}</td>
                                        <td>
                                            <div class="flex items-center justify-end gap-3 mr-3">
                                                @can('principal')
                                                    <a href="{{ route('students.edit', $student->id) }}" class="inline-block px-6 py-2.5 bg-purple-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-purple-700 hover:shadow-lg focus:bg-purple-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-purple-800 active:shadow-lg transition duration-150 ease-in-out">Edit</a>
                                                @endcan
                                                
                                                @can('principal')
                                                    <form action="{{ route('students.destroy', $student->id) }}" method="post" onsubmit="return confirm('Are you sure?')"> @csrf @method('DELETE')
                                                        <button type="submit" class="inline-block px-6 py-2.5 bg-red-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-red-700 hover:shadow-lg focus:bg-red-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-red-800 active:shadow-lg transition duration-150 ease-in-out">Delete</button>
                                                    </form>
                                                @endcan
                                            </div>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="4" class="text-center text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">No record found</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
        {{ $students->render() }}
    </div>
</x-app-layout>
