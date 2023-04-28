<x-app-layout>
    <div class="container py-8">
        <figure class="mb-4">
            <img class="w-full h-80 object-cover object-center" src="{{Storage::url($categorii->image)}}" alt="">
        </figure>
        @livewire('categorii-filter', ['categorii' => $categorii])
    </div>

    
</x-app-layout>