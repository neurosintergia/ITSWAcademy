@props(['course'])

<article class="card flex flex-col">
  <img class="h-36 w-full object-cover" src="{{ Storage::url($course->image->url) }}" alt=""> 
    <div class="card-body flex-1 flex flex-col">
    <h1  class="card-title"> <a href="{{ route('courses.show', $course)}}" > {{ Str::limit($course->title, 40)}} </a> </h1>
    <p  class="text-gray-500 text-sm mb-2 mt-auto"> Prof: {{ $course->teacher->name }}</p>
    <div class="flex">
        <ul class="flex text-sm">
            <li class="mr-1"> 
                <i class="fas fa-star text-{{$course->rating >= 1 ? 'yellow' : 'gray'}}-400"></i> 
            </li>
            <li class="mr-1">
                <i class="fas fa-star text-{{$course->rating >= 2 ? 'yellow' : 'gray'}}-400"></i>
            </li>
            <li class="mr-1">
                <i class="fas fa-star text-{{$course->rating >= 3 ? 'yellow' : 'gray'}}-400"></i>
            </li>
            <li class="mr-1">
                <i class="fas fa-star text-{{$course->rating >= 4 ? 'yellow' : 'gray'}}-400"></i>
            </li>
            <li class="mr-1">
                <i class="fas fa-star text-{{$course->rating == 5 ? 'yellow' : 'gray'}}-400"></i>
            </li>
        </ul>

        {{-- <p class="text-sm text-gray-500 ml-auto">
            <i class="fas fa-users"></i>
            ({{ $course->students_count }})
        </p> --}}
    </div>

       @if ($course->price->value == 0)
       <p class="my-2 text-center text-green-800 font-bold">GRATIS</p> 
       @else
       <p class="my-2 text-center text-blue-500 font-bold">{{$course->price->name}}</p>  
       @endif

    <a href="{{ route('courses.show', $course)}}"   class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full btn-block bg-blue-700 ">
        Mas información
    </a>
    </div>

    </article>