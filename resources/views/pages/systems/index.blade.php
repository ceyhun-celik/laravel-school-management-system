<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Systems') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto mt-6 sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <form action="{{ route('systems.store') }}" method="post" class="p-6 bg-white border-b border-gray-200"> @csrf
                <div class="mb-4">
                    <label for="Lock Timetables" class="form-label inline-block mb-2 text-gray-700">Lock Timetables</label>
                    <x-text-input type="datetime-local" name="lock_timetables" value="{{ $system->lock_timetables }}" id="lock_timetables" />
                </div>

                <div class="flex justify-end">
                    <button type="submit" class="inline-block px-6 py-2.5 mb-1 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Done</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>