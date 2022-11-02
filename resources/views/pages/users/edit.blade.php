<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit User') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto mt-6 sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            
            <form action="{{ route('users.update', $user->id) }}" method="post" class="p-6 bg-white border-b border-gray-200"> @csrf @method('PUT')
                <input type="hidden" name="id" value="{{ $user->id }}">

                <div class="mb-4">
                    <label for="Name" class="form-label inline-block mb-2 text-gray-700">Name</label>
                    <input type="text" name="name" value="{{ old('name') ?? $user->name }}" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="Name"/>
                </div>

                <div class="mb-4">
                    <label for="Email" class="form-label inline-block mb-2 text-gray-700">Email</label>
                    <input type="text" name="email" value="{{ old('email') ?? $user->email }}" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="Email"/>
                </div>

                <div class="mb-4">
                    <label for="Role Name" class="form-label inline-block mb-2 text-gray-700">Role Name</label>
                    <select name="role_id" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="Role Name">
                        <option value="">-- Select --</option>
                        <option {{ old('role_id') ?? $user->role_id == 1 ? 'selected' : '' }} value="1">Principal</option>
                        <option {{ old('role_id') ?? $user->role_id == 2 ? 'selected' : '' }} value="2">Teacher</option>
                        <option {{ old('role_id') ?? $user->role_id == 3 ? 'selected' : '' }} value="3">Student</option>
                    </select>
                </div>

                <div class="mb-4">
                    <label for="Password" class="form-label inline-block mb-2 text-gray-700">Password</label>
                    <input type="password" name="password" class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="Password"/>
                </div>

                <div class="flex justify-end">
                    <button type="submit" class="inline-block px-6 py-2.5 mb-1 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Done</button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>