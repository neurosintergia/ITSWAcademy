<div class="container py-12">
   {{-- Formulario crear categoria --}}
    <x-jet-form-section submit="save" class="mb-6">
        <x-slot name="title">
            Crear nueva subcategoria
        
          </x-slot>
  
          <x-slot name="description">
              Complete la informacion necesaria para crear una nueva subcategoria
        
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
                <div class="flex items-center">
                    <p>¿Esta subcategoria necesita especificar color?</p>
                    <div class="ml-auto">

                        <label >
                            <input wire:model.defer="createForm.color" type="radio" value="1" name="color">
                            Si
                        </label>
                        <label >
                            <input wire:model.defer="createForm.color" type="radio" value="0" name="color">
                            No
                        </label>

                    </div>
                </div>
                
                <x-jet-input-error for="'createForm.color" />

             </div>
  
           
       
             <div class="col-span-6 sm:col-span-4">
                <div class="flex items-center">
                    <p>¿Esta subcategoria necesita especificar talla?</p>
                    <div class="ml-auto">

                        <label >
                            <input wire:model.defer="createForm.size" type="radio" value="1" name="size">
                            Si
                        </label>
                        <label >
                            <input wire:model.defer="createForm.size" type="radio" value="0" name="size">
                            No
                        </label>

                    </div>
                </div>
                <x-jet-input-error for="'createForm.size" />
             </div>
             
          </x-slot>
  
          
          <x-slot name="actions">
  
              <x-jet-action-message class="mr-3" on="saved">
                   Subcategoria Creada 
              </x-jet-action-message>
              <x-jet-button>
                  Agregar
              </x-jet-button>
        
          </x-slot>
  
    </x-jet-form-section>

 {{-- Formulario listar categoria --}}
    <x-jet-action-section>
        <x-slot name="title">
            Lista de Subcategorias
        </x-slot>

        <x-slot name="description">
            Aquí encontraras todas las Subcategorias 
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
                    @foreach ($subcategoriis as $subcategorii)
                        <tr>
                            <td class="py-2">
                           
                                <span class="uppercase">
                                    {{$subcategorii->name}}
                                </span>
                            </td>
                            <td class="py-2">
                                <div class="flex divide-x divide-gray-400 font-semibold ">
                                    <a class="pr-2 hover:text-blue-600 cursor-pointer" wire:click="edit('{{$subcategorii->id}}')">Editar</a>
                                    <a class="pl-2 hover:text-red-600 cursor-pointer" wire:click="$emit('deleteSubcategorii', '{{$subcategorii->id}}')">Eliminar</a>

                                </div>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </x-slot>
    </x-jet-action-section>
 {{-- Formulario editar categoria --}}
    <x-jet-dialog-modal wire:model="editForm.open">

        <x-slot name="title">
            Editar subcategoria 
        </x-slot>

        <x-slot name="content">

            <div class=" space-y-3">


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
             
   
                <div >
                    <div class="flex items-center">
                        <p>¿Esta subcategoria necesita especificar color?</p>
                        <div class="ml-auto">
    
                            <label >
                                <input wire:model.defer="editForm.color" type="radio" value="1" name="color">
                                Si
                            </label>
                            <label >
                                <input wire:model.defer="editForm.color" type="radio" value="0" name="color">
                                No
                            </label>
    
                        </div>
                    </div>
                    
                    <x-jet-input-error for="'createForm.color" />
    
                 </div>
      
               
           
                 <div >
                    <div class="flex items-center">
                        <p>¿Esta subcategoria necesita especificar talla?</p>
                        <div class="ml-auto">
    
                            <label >
                                <input wire:model.defer="editForm.size" type="radio" value="1" name="size">
                                Si
                            </label>
                            <label >
                                <input wire:model.defer="editForm.size" type="radio" value="0" name="size">
                                No
                            </label>
    
                        </div>
                    </div>
                    <x-jet-input-error for="'createForm.size" />
                 </div>
           

            </div>
        </x-slot>
      
        <x-slot name="footer">
            <x-jet-danger-button wire:click="update" wire:loading.attr="disabled" wire:target="update">
                Actualizar
            </x-jet-danger-button>
        </x-slot>

    </x-jet-dialog-modal>

    @push('script')
    <script>
        Livewire.on('deleteSubcategorii', subcategoriiId => {

            Swal.fire({

                title: '¿Estas Seguro?',
                text: "No podra revertir esto",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si, eliminar!'
            }).then((result) => {
                if (result.isConfirmed) {
                    Livewire.emitTo('admin.show-categorii', 'delete', subcategoriiId)
                    Swal.fire(
                        'Eliminar!',
                        'Categoria eliminada.',
                        'success'
                    )
                }
            })

        });
    </script>
@endpush
</div>
