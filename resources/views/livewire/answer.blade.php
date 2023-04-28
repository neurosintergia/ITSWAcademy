<div class="pl-16">
    <button wire:click="$set('answer_created.open', true)">
        <i class="fas fa-reply"></i>
        Responder
    </button>

    @if ($answer_created['open'])
        
        <div class="flex">
            <figure class="mr-4">
                <img class="h-12 w-12 object-cover rounded-full shadow-lg" src="{{auth()->user()->profile_photo_url}}" alt="">
            </figure>

            <form class="flex-1" wire:submit.prevent="store()"> 
                                
                <textarea wire:model="answer_created.body" placeholder="Escriba su respuesta" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full"></textarea>
               
                <x-jet-input-error for="answer_created.body" class="mt-1" />
                
                <div class="flex justify-end">
                    <x-jet-danger-button class="mr-2" wire:click="$set('answer_created.open', false)">
                        Cancelar
                    </x-jet-danger-button>
                    <x-jet-button>
                        Responder
                    </x-jet-button>
                    
                </div>

            </form>

        </div>

  
        
    @endif


    @if ($question->answers()->count())
        
        <div class="mt-2">
            <button class=" text-sm font-semibold text-blue-800 hover:text-blue-500 mx-4"
                    wire:click="show_answer">


                    @if ($this->cant < $this->question->answers()->count())
                        Mostrar respuestas 
                    @else
                        Ocultar respuestas 
                    @endif

              
            </button>
        </div>

    @endif
    <ul class="space-y-6 mt-4">
       
        @foreach ($this->answers as $answer)
       
        <li  wire:key="answer-{{$answer->id}}">
           
            <div class="flex">
               
                <figure class="mr-4">
                    <img class="h-12 w-12 object-cover rounded-full shadow-lg" src="{{$answer->user->profile_photo_url}}" alt="">
                </figure>
               
                <div class="flex-1">
                    
                    <p class="font-semibold">

                        {{$answer->user->name}}

                        <span class="text-sm font-normal">
                            {{$answer->created_at->diffForHumans()}}
                        </span>
                    </p>

                    @if ($answer->id == $answer_edit['id'])

                        <form wire:submit.prevent="update"> 
                                    
                            <textarea wire:model="answer_edit.body" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full"></textarea>
                            
                            <x-jet-input-error for="answer_edit.body" class="mt-1" />
                        
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
                        {{$answer->body}}
                    </p>

                    <button wire:click="$set('answer_to_answer.id',{{$answer->id}})">
                        <i class="fas fa-reply"></i>
                        Responder
                    </button>

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
                        @if (  $answer->user->id  == auth()->user()->id  )

                      

                       <x-jet-dropdown-link class="cursor-pointer" wire:click="edit({{$answer->id}})">
                        Editar
                       </x-jet-dropdown-link>


                       <x-jet-dropdown-link class="cursor-pointer"  wire:click="destroy({{$answer->id}})">
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
            
            @if ($answer_to_answer['id'] == $answer->id)
    

                <div class="flex mt-4"> 
                    <figure class="mr-4">
                        <img class="h-12 w-12 object-cover rounded-full shadow-lg" src="{{$answer->user->profile_photo_url}}" alt="">
                    </figure>

                    <div class="flex-1">
                    
                        <form wire:submit.prevent="answer_to_answer_store"> 
                                            
                            <textarea wire:model="answer_to_answer.body" placeholder="Ingrese una respuesta" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full"></textarea>
                            
                            <x-jet-input-error for="answer_to_answer.body" wire:model="answer_to_answer.body" class="mt-1" />
                        
                            <div class="flex justify-end">
                                <x-jet-danger-button class="mr-2" wire:click="$set('answer_to_answer.id',null)">
                                    Cancelar
                                </x-jet-danger-button>
                                <x-jet-button>
                                    Responder
                                </x-jet-button>
                                
                            </div>
        
                        </form>
                    </div>
                </div>
            @endif

        </li>

    
        @endforeach
    </ul>

</div>
