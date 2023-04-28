<div>
    <p class="text-lg font-semibold mt-6 mb-4">
        Comentar:
     </p>
    <div class="flex">

      
        
            
       
        <figure class="mr-4">
            <img class="h-12 w-12 object-cover rounded-full shadow-lg" src="{{auth()->user()->profile_photo_url}}" alt="">
        </figure>
      
        <div class="flex-1">

        <form wire:submit.prevent="store">
         
            <textarea wire:model.defer="message" rows="3" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full" placeholder="Escribe tu mensaje"></textarea>
           <x-jet-input-error for="message" class="mt-1" />
           
         <div class="flex justify-end">

            <x-jet-button wire:target="store" wire:loading.attr="disabled" class="btn btn-primary mr-3">
                Comentar
            </x-jet-button>
        
         </div>

        </form>
       
        

        
        </div>

    </div>


    <p class="text-lg font-semibold mt-6 mb-4">
       Comentarios:
    </p>

    <ul class="space-y-6 mb-8">
        @foreach ($this->questions as $question)
            <li  wire:key="question-{{$question->id}}">
                <div class="flex">

                    <figure class="mr-4">
                        <img class="h-12 w-12 object-cover rounded-full shadow-lg" src="{{$question->user->profile_photo_url}}" alt="">
                    </figure>
                    
                    <div class="flex-1">
                        <p class="font-semibold">
                            {{$question->user->name}}
                            <span class="text-sm font-normal">
                                {{$question->created_at->diffForHumans()}}
                            </span>
                        </p>

                        @if ($question->id == $question_edit['id'])
                            
                            <form wire:submit.prevent="update"> 
                                
                                <textarea wire:model="question_edit.body" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full"></textarea>
                                <x-jet-input-error for="question_edit.body" class="mt-1" />
                               
                                <div class="flex justify-end">
                                    <x-jet-danger-button class="mr-2" wire:click="cancel">
                                        Cancelar
                                    </x-jet-danger-button>
                                    <x-jet-button>
                                        Actualizar
                                    </x-jet-button>
                                    
                                </div>

                            </form>
                                                   
                        @else

                        <p>
                            {{$question->body}}
                        </p>
                        @endif
                       
                 </div>
          
                    
                    <div class="ml-6">
                        
                        <x-jet-dropdown >
                            <x-slot name="trigger">
                                    <button >
                                        <i class="fas fa-ellipsis-v"></i>
                                    </button>
                            </x-slot>

                            <x-slot name="content">
                                <div class="block px-4 py-2 text-xs text-gray-400">
                                    Administrar    </div>
                                @if (  $question->user->id  == auth()->user()->id  )
                                <x-jet-dropdown-link class="cursor-pointer" wire:click="edit({{$question->id}})">
                                    Editar
                                </x-jet-dropdown-link>
                                <x-jet-dropdown-link class="cursor-pointer"  wire:click="destroy({{$question->id}})">
                                    Eliminar
                                </x-jet-dropdown-link>
                          
                                @else               
                                <a class="block px-4 py-2 text-sm leading-5 text-gray-700 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 transition cursor-pointer" data-turbo="false"><i class="fas fa-flag inline-block w-5"></i>
                                 Reportar</a>
                                 @endif
                            </x-slot>

                        </x-jet-dropdown>
                        
                     
                    </div>

                </div>
                @livewire('answer', compact('question'), key('answer-'.$question->id))
            </li>
        @endforeach
    </ul>

    @if ($model->questions()->count() - $cant > 0)
        
 

    <div class="flex items-center">

        <hr class="flex-1">

        <button class=" text-sm font-semibold text-blue-800 hover:text-blue-500 mx-4"
                wire:click="show_more_question">
            Ver los {{$model->questions()->count() - $cant}} comentarios restantes
        </button>

        <hr class="flex-1">
    </div>

    @endif
</div>
