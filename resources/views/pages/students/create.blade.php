<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Create Student') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto mt-6 sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <form action="{{ route('students.store') }}" method="post" class="p-6 bg-white border-b border-gray-200"> @csrf
                <div class="mb-4">
                    <label for="User Name" class="form-label inline-block mb-2 text-gray-700">User Name</label>
                    <select name="user_id" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="User Name">
                        @forelse ($users as $user)
                            @if ($loop->first)
                                <option value="">-- Select --</option>
                            @endif

                            <option {{ old('user_id') == $user->id ? 'selected' : '' }} value="{{ $user->id }}">{{ $user->name }}</option>
                        @empty
                            <option value="">No record found</option>                            
                        @endforelse
                    </select>
                </div>

                <div class="mb-4">
                    <label for="Classroom Name" class="form-label inline-block mb-2 text-gray-700">Classroom Name</label>
                    <select name="classroom_id" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="Classroom Name">
                        @forelse ($classrooms as $classroom)
                            @if ($loop->first)
                                <option value="">-- Select --</option>
                            @endif

                            <option {{ old('classroom_id') == $classroom->id ? 'selected' : '' }} value="{{ $classroom->id }}">{{ $classroom->classroom_name }}</option>
                        @empty
                            <option value="">No record found</option>                            
                        @endforelse
                    </select>
                </div>

                <div class="flex justify-end">
                    <button type="submit" class="inline-block px-6 py-2.5 mb-1 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Done</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>