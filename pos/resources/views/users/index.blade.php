@extends('layouts.app')
 
@section('title', 'Users lists')
 
@section('content')

    <a href="{{ route('users.create')}}">New User</a>

    <table class="">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Type</th>
            <th>Location</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
            @if($users->isEmpty())
                <tr>
                    <td colspan="5">Users dont exits.</td>
                </tr>
            @endif


            @foreach ($users as $user)
            <tr>
                <td>{{ $user->first_name }} {{ $user->last_name }}</td>
                <td>{{ $user->email }} {{ $user->email }}</td>
                <td>{{ $user->phone_number }} {{ $user->phone_number }}</td>
                <td>{{ $user->type }} {{ $user->type }}</td>
                <td>{{ $user->location }} {{ $user->location }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

@endsection
