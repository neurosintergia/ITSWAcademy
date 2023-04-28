<div>
  <x-jet-form-section submit="save" class="mb-6">
      <x-slot name="title">
          Crear nueva categoria
      
        </x-slot>

        <x-slot name="description">
            Complete la informacion necesaria para crear una nueva categoria
      
        </x-slot>

        <x-slot name="form">
            <div class="col-span-6 sm:col-span-4">
                <x-jet-label>
                    Nombre
                </x-jet-label>
                <x-jet-input wire:model="createForm.name" type="text" class="w-full mt-1" />
              <x-jet-input-error for="createForm.name" />
            </div>

            <div class="col-span-6 sm:col-span-4">
                <x-jet-label>
                    Slug
                </x-jet-label>
                <x-jet-input disabled wire:model="createForm.slug" type="text" class="bg-gray-100  w-full mt-1" />
                <x-jet-input-error for="createForm.slug" />
            </div>
            <div class="col-span-6 sm:col-span-4">
                <x-jet-label>
                    Icono
                </x-jet-label>
                <x-jet-input  wire:model.defer="createForm.icon" type="text" class="w-full mt-1" />
                <x-jet-input-error for="createForm.icon" />
            </div>

            <div class="col-span-6 sm:col-span-4">
                <x-jet-label>
                    Marcas
                </x-jet-label>

                <div class="grid grid-cols-4">
                    @foreach ($brands as $brand)
                        <x-jet-label>
                            <x-jet-checkbox 
                            wire:model.defer="createForm.brands"
                            name="brands[]"
                            value="{{$brand->id}}"/>
                                {{$brand->name}}
                            
                        </x-jet-label>
                    @endforeach
                </div>
                <x-jet-input-error for="createForm.brands" />
            </div>

            <div class="col-span-6 sm:col-span-4">
                <x-jet-label>
                    Imagen
                </x-jet-label>
                <input    accept="image/*"   wire:model="createForm.image" type="file" name="" id="{{$rand}}" class="mt-1" >
                <x-jet-input-error for="createForm.image" />
            </div>
        </x-slot>

        
        <x-slot name="actions">

            <x-jet-action-message class="mr-3" on="saved">
    Categoria Creada 
            </x-jet-action-message>
            <x-jet-button>
                Agregar
            </x-jet-button>
      
        </x-slot>

  </x-jet-form-section>



    <x-jet-action-section>
        <x-slot name="title">
            Lista de Categorias
        </x-slot>
        <x-slot name="description">
            Aquí encontraras todas las categorias 
        </x-slot>
        <x-slot name="content">
            <table class="text-gray-600">
                <thead class="border-b border-gray-300">
                    <tr class="text-left">
                        <th class="py-2 w-full ">Nombre</th>
                        <th class="py-2 ">Acción</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-gray-400">
                    @foreach ($categoriis as $categorii)
                    <tr>
                        <td class="py-2">
                            <span class=" inline-block w-8 text-center mr-2">
                                {!!$categorii->icon!!}
                            </span>
                            <a href="{{route('inventary.categoriis.show', $categorii)}}" class=" underline hover:text-blue-600 uppercase">
                                {{$categorii->name}}
                            </a>
                        </td>
                        <td class="py-2">
                            <div class="flex divide-x divide-gray-400 font-semibold ">
                                <a class="pr-2 hover:text-blue-600 cursor-pointer" wire:click="edit('{{$categorii->slug}}')">Editar</a>
                                <a class="pl-2 hover:text-red-600 cursor-pointer" wire:click="$emit('deleteCategorii', '{{$categorii->slug}}')">Eliminar</a>

                            </div>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </x-slot>
    </x-jet-action-section>

    <x-jet-dialog-modal wire:model="editForm.open">

        <x-slot name="title">
            Editar categoria 
        </x-slot>

        <x-slot name="content">

            <div class=" space-y-3">

                <div>
                  @if ($editImage)
                  <img class="w-full h-64 object-cover  object-center" src="{{$editImage->temporaryUrl()}}" alt="">
                  @else
                      <img class="w-full h-64 object-cover  object-center" src="{{Storage::url($editForm['image'])}}" alt="">
                  @endif
                </div>

                <div class="">
                    <x-jet-label>
                        Nombre
                    </x-jet-label>
                    <x-jet-input wire:model="editForm.name" type="text" class="w-full mt-1" />
                <x-jet-input-error for="editForm.name" />
                </div>

                <div class="">
                    <x-jet-label>
                        Slug
                    </x-jet-label>
                    <x-jet-input disabled wire:model="editForm.slug" type="text" class="bg-gray-100  w-full mt-1" />
                    <x-jet-input-error for="editForm.slug" />
                </div>
                <div class="">
                    <x-jet-label>
                        Icono
                    </x-jet-label>
                    <x-jet-input  wire:model.defer="editForm.icon" type="text" class="w-full mt-1" />
                    <x-jet-input-error for="editForm.icon" />
                </div>

                <div class="">
                    <x-jet-label>
                        Marcas
                    </x-jet-label>

                    <div class="grid grid-cols-4">
                        @foreach ($brands as $brand)
                            <x-jet-label>
                                <x-jet-checkbox 
                                wire:model.defer="editForm.brands"
                                name="brands[]"
                                value="{{$brand->id}}"/>
                                    {{$brand->name}}
                                
                            </x-jet-label>
                        @endforeach
                    </div>
                    <x-jet-input-error for="editForm.brands" />
                </div>

                <div class="">
                    <x-jet-label>
                        Imagen
                    </x-jet-label>
                    <input    accept="image/*"   wire:model="editImage" type="file" name="" id="{{$rand}}" class="mt-1" >
                    <x-jet-input-error for="editImage" />
                </div>

        </div>
        </x-slot>
      
        <x-slot name="footer">
            <x-jet-danger-button wire:click="update" wire:loading.attr="disabled" wire:target="editImage, update">
                Actualizar
            </x-jet-danger-button>
        </x-slot>

    </x-jet-dialog-modal>

</div>
