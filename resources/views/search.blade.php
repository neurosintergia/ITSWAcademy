<x-app-layout>
<div class="container py-8">
    <ul>
        @forelse ($products as $product)
          <x-product-list :product="$product" />
          @empty 
          <li class="bg-white rounded-lg shadow-2xl ">
                <div class="p-4">
                    <p class="text-lg font-bold text-gray-700">Ningún items coincidente</p>
                </div>

          </li>
        @endforelse
    </ul>
    <div class="mt-4">
        {{$products->links()}}
    </div>
</div>


</x-app-layout>