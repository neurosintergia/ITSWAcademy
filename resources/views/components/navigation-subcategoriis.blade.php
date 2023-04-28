@props(['categorii'])

<div class="grid grid-cols-4 p-4">
    <div>
     <p class="text-lg font-bold text-center text-trueGray-500 mb-3"> Subcategorías</p>
    <ul>
      @foreach ($categorii->subcategoriis as $subcategorii)
          <li>
            <a href="{{route('categoriis.show', $categorii) . '?subcategoria=' . $subcategorii->slug}}" class="text-trueGray-500  font-semibold inline-block py-1 px-4 hover:text-blue-500">
              {{$subcategorii->name}}
            </a>
          </li>
      @endforeach
    
    </ul>
    </div>

    <div class="col-span-3">
      <img class="h-64 w-full object-cover object-center" src="{{Storage::url($categorii->image)}}" alt="">
    </div>
  </div>