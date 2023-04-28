<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight capitalize">
           Ciudad:  {{$city->name }}
        </h2>
    </x-slot>
    <div class="container py-12">
        {{-- Agregar localidad--}}
        <x-jet-form-section submit="save" class="mb-6">
            <x-slot name="title">
                Agregar una nueva localidad
            </x-slot>
     
            <x-slot name="description">
                Complementa la informacion necesaria 
             </x-slot>
     
            <x-slot name="form">
                <div class="col-span-6 sm:col-span-4">
                     <x-jet-label>
                         Nombre
                     </x-jet-label>
                     <x-jet-input wire:model.defer="createForm.name" type="text" class="w-full mt-1"/>
                     <x-jet-input-error for="createForm.name" />
                </div>
           
             </x-slot>
     
             <x-slot name="actions">
                 <x-jet-action-message class="mr-3" on="saved">
                     Localidad agregada
                 </x-jet-action-message>
     
                 <x-jet-button>
                     Agregar
                 </x-jet-button>
             </x-slot>
        </x-jet-form-section>
     
          {{-- mostrar localidad--}}
          
         <x-jet-action-section>
             <x-slot name="title">
                 Lista de Localidades
             </x-slot>
             <x-slot name="description">
                 Aquí encontraras todas las localidades
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
                         @foreach ($districts as $district)
                         <tr>
                             <td class="py-2">
                                {{$district->name}}
                                 {{-- <a href="{{route('inventary.districts.show',$district)}}" class=" underline hover:text-blue-600 uppercase">
                                     {{$district->name}}
                                 </a> --}}
                             </td>
                             <td class="py-2">
                                 <div class="flex divide-x divide-gray-400 font-semibold ">
                                     <a class="pr-2 hover:text-blue-600 cursor-pointer" wire:click="edit({{$district}})">Editar</a>
                                     <a class="pl-2 hover:text-red-600 cursor-pointer" wire:click="$emit('deleteDistrict',{{$district->id}} )">Eliminar</a>
     
                                 </div>
                             </td>
                         </tr>
                     @endforeach
                     </tbody>
                 </table>
             </x-slot>
         </x-jet-action-section>
          {{-- editar estado--}}
     
         <x-jet-dialog-modal wire:model="editForm.open">
     
             <x-slot name="title">
                 Editar localidad  
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
     
     
             </div>
             </x-slot>
           
             <x-slot name="footer">
                 <x-jet-danger-button wire:click="update" wire:loading.attr="disabled" wire:target="update">
                     Actualizar
                 </x-jet-danger-button>
             </x-slot>
     
         </x-jet-dialog-modal>
     
     </div>
     @push('script')
     <script>
         Livewire.on('deleteDistrict', districtId => {
 
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
                     Livewire.emitTo('admin.city-component', 'delete', districtId )
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
