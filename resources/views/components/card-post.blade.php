@props(['post'])



<article class=" mb-8 bg-white shadow-lg rounded-lg overflow-hidden">

    @if ($post->image)

    <img class="w-full h-72 object-center rounded-lg object-cover" src="{{Storage::url($post->image->url)}}" alt="">

    @else

    <img class="w-full h-72 object-center object-cover" src="https://cdn.pixabay.com/photo/2016/05/14/15/10/banner-1391996_960_720.jpg" alt="">

    @endif

    

    <div class="px-6 py-4">

        <h1 class=" text-3xl text-blue-900  font-bold mt-2 mb-2">

            <a class="" href="{{route('posts.show', $post)}}">{{$post->name}}</a>

        </h1>

        <div class="text-gray-800 text-base text-justify">

            {!!$post->extract!!}

        </div>

    </div>



    <div class="px-6 pt-4 pb-2">
        <hr class="mt-1 mb-2 ">
        @foreach ($post->tags as $tag)

            <a href="{{route('posts.tag', $tag)}}" class="inline-block bg-{{$tag->color}}-600 rounded-full px-3 py-1 text-sm text-white mr-2">{{$tag->name}}</a>

        @endforeach
        <hr class="mt-1 mb-2 ">


    </div>





</article>