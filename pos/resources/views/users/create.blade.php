@extends('layouts.app')
 
@section('title', 'Create User')
 
 
@section('content')

    <a href="{{ route('users.index')}}">Cancel</a>

    <form action="{{ route('users.store') }}" method="POST">
        @csrf
        <input type="text" name="first_name" id="first_name" placeholder="first_name">
        <input type="text" name="last_name" id="last_name" placeholder="last_name">
        <input type="email" name="email" id="email" placeholder="Email">
        <input type="phone" name="phone_number" id="phone_number" placeholder="phone Number">

        <button type="submit">Create</button>
        <button type="reset">Reset</button>
    </form>

@endsection
