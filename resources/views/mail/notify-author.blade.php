@component('mail::message')
#Hola {{$author->name}},

{{$question->user->name}} Te ha escrito en los comentarios desde ITSW-Academy

@component('mail::panel')
{!!$question->body!!}
@endcomponent

Correo de contacto: {{$question->user->email}}

@endcomponent