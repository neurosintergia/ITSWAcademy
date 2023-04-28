<div>

    <div class="grid lg:grid-cols-5  ">

        <div class="col-span-1 hidden lg:block pl-6">
            <form action="{{route('courses.index')}}">

                <div class="">
                <p class="text-lg font-semibold mt-4">Ordenar por:</p>

                <select class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline mb-6" name="order">
                    <option value="new">Nuevos</option>
                    <option value="old" @selected(request(('order') == 'old'))>Anteriores</option>
                </select>
                </div>

                <div class="mb-6">
                  
                    <p class="text-lg font-semibold">Categorias:</p>
                    <ul>
                        @foreach ($categories as $category)
                            <li>
                                <label>
                                    <x-jet-checkbox  name="category[]" value="{{$category->id}}" :checked="is_array(request('category')) && in_array($category->id, request('category')) "/>
                                
                                    <span class="ml-2 text-gray-700"> {{$category->name}}</span>
                                </label>
                            </li>    
                        @endforeach
                    </ul>
                </div>

                <div class="mb-6">
                  
                    <p class="text-lg font-semibold">Niveles:</p>
                    <ul>
                        @foreach ($levels as $level)
                            <li>
                                <label>
                                    <x-jet-checkbox  name="level[]" value="{{$level->id}}" :checked="is_array(request('level')) && in_array($level->id, request('level')) "/>
                                
                                    <span class="ml-2 text-gray-700"> {{$level->name}}</span>
                                </label>
                            </li>    
                        @endforeach
                    </ul>
                </div>

                <div class="mb-6">
                  
                    <p class="text-lg font-semibold">Precios:</p>
                    <ul>
                        @foreach ($prices as $price)
                            <li>
                                <label>
                                    <x-jet-checkbox  name="price[]" value="{{$price->id}}" :checked="is_array(request('price')) && in_array($price->id, request('price')) "/>
                                
                                    <span class="ml-2 text-gray-700"> {{$price->name}}</span>
                                </label>
                            </li>    
                        @endforeach
                    </ul>
                </div>

                <x-jet-button>
                    Aplicar filtros
                </x-jet-button>
            </form>
            <hr class="mt-1 mb-2">  
        </div>



        <div class=" col-span-4">

            <div class="flex justify-center lg:mt-8 m-2">
                @livewire('search')
            </div>

            <div class=" py-4 mb-14">
                <div class=" max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex">
                    <button class="focus:outline-none bg-white shadow h-12 px-4 rounded-lg text-gray-700 mr-4"
                        wire:click="resetFilters">
                        <i class="fas fa-laptop-code text-xs mr-2"></i>
                        Todos los Cursos</button>
                    <!-- Dropdown categoria-->
                    <div class="relative mr-4" x-data="{ open: false }">
                        <button
                            class="px-4 text-gray-700 block h-12 rounded-lg overflow-hidden focus:outline-none bg-white shadow"
                            x-on:click="open=true">

                            <i class=" fas fa-tags text-sm mr-2"></i>
                            Categoria
                            <i class=" fas fa-angle-down text-sm ml-2"></i>
                        </button>
                        <!-- Dropdown Body -->
                        <div class="absolute right-0 w-40 mt-2 py-2 bg-white border rounded shadow-xl" x-show="open"
                            x-on:click.away="open = false">
                            @foreach ($categories as $category)
                                <a class="cursor-pointer transition-colors duration-200 block px-4 py-2 text-normal text-gray-900 rounded hover:bg-blue-500 hover:text-white"
                                    wire:click="$set('category_id', {{ $category->id }})"
                                    x-on:click="open = false">{{ $category->name }}</a>
                            @endforeach

                        </div>
                        <!-- // Dropdown Body -->
                    </div>
                    <!-- // Dropdown -->

                    <!-- Dropdown Niveles -->
                    <div class="relative " x-data="{ open: false }">
                        <button
                            class="px-4 text-gray-700 block h-12 rounded-lg overflow-hidden focus:outline-none bg-white shadow"
                            x-on:click="open=true">

                            <i class="fas fa-layer-group mr-2"></i>
                            Niveles

                            <i class=" fas fa-angle-down text-sm ml-2"></i>
                        </button>
                        <!-- Dropdown Body -->
                        <div class="absolute right-0 w-40 mt-2 py-2 bg-white border rounded shadow-xl" x-show="open"
                            x-on:click.away="open = false">
                            @foreach ($levels as $level)
                                <a class="cursor-pointer transition-colors duration-200 block px-4 py-2 text-normal text-gray-900 rounded hover:bg-blue-500 hover:text-white"
                                    wire:click="$set('level_id', {{ $level->id }})" x-on:click="open = false">
                                    {{ $level->name }} </a>

                            @endforeach

                        </div>
                        <!-- // Dropdown Body -->
                    </div>
                    <!-- // Dropdown -->

                    <!-- Pruebas inicio-->
                    
                    <!-- Pruebas final -->





                </div>

                
            </div>


            <div
                class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-6 gap-y-8">

                @foreach ($courses as $course)


                    <x-course-card :course="$course" />

                @endforeach


            </div>

            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 mt-4 mb-8">

                {{ $courses->links() }}
            </div>

        </div>
    </div>

</div>
