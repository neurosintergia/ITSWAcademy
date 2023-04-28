


@php
$nav_links = [
  [
    'name' => 'Inicio',
    'route' => route('home'),
    'icon' =>  '<i class="fas fa-home"></i>',
    'active' => request()->routeIs('home')
  ],
  [
    'name' => 'Acerca',
    'route' => route('acerca'),
    'icon' =>  '<i class="fas fa-project-diagram"></i>',
    'active' => request()->routeIs('acerca.*')
  ],
    [
    'name' => 'Acerca de',
    'route' => route('acerca'),
    'icon' =>  '<i class="fas fa-project-diagram"></i>',
    'active' => request()->routeIs('acerca.*')
  ],
  [
    'name' => 'Lengua de Señas Mexicana',
    'route' => route('enseñar.show'),
    'icon' =>  '<i class="fas fa-chalkboard-teacher"></i>',
    'active' => request()->routeIs('enseñar.*')
  ],
  [
    'name' => 'Escuela LSM',
    'route' => route('courses.index'),
    'icon' =>  '<i class="fas fa-chart-line"></i>',
    'active' => request()->routeIs('courses.*')
  ],
 

  [
    'name' => 'Blog',
    'route' => route('posts.index'),
    'icon' =>  '<i class="far fa-file-alt"></i>',
    'active' => request()->routeIs('posts.*')
  ],
  [
    'name' => 'Contacto',
    'route' => route('contacto.index'),
    'icon' =>  '<i class="fas fa-address-card"></i>',
    'active' => request()->routeIs('contacto.*')
  ],
];    

@endphp


{{--
      [
    'name' => 'Recursos',
    'route' => route('podcast.index'),
    'icon' =>  '<i class="fas fa-podcast"></i>',
    'active' => request()->routeIs('podcast.*')
  ],
    --}}
<header x-data="{ open: false }" style="background: #00536b"   class=" border-b sticky top-0 z-50  shadow-lg">

  <!-- Desktop -->
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between h-16">
          <div class="flex">
              <!-- Logo -->
              <div class="flex-shrink-0 flex items-center">
                <a href="/" class="flex-shrink-0 flex items-center mx-6">
                    <img class="block lg:hidden h-12 w-auto" src="{{asset('img/home/logo2.png')}}" alt="ITSW"> 
                    <img class="hidden lg:block h-12 w-auto" src="{{asset('img/home/logo2.png')}}" alt="ITSW">
                  </a>   
              </div>

              <!-- Navigation Links -->
              <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                  @foreach ($nav_links as $nav_link)
                 
                  <x-jet-nav-link href="{{$nav_link['route']}}" :active="$nav_link['active']">
                      {{  $nav_link['name']  }}
                  </x-jet-nav-link>

                  @endforeach


                  
              </div>
          </div>

          <div class="hidden sm:flex sm:items-center sm:ml-6">
              <!-- Teams Dropdown -->
              @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                  <div class="ml-3 relative">
                      <x-jet-dropdown align="right" width="60">
                          <x-slot name="trigger">
                              <span class="inline-flex rounded-md">
                                  <button type="button" class="inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-gray-500 bg-white hover:bg-gray-50 hover:text-gray-700 focus:outline-none focus:bg-gray-50 active:bg-gray-50 transition">
                                      {{ Auth::user()->currentTeam->name }}

                                      <svg class="ml-2 -mr-0.5 h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                                          <path fill-rule="evenodd" d="M10 3a1 1 0 01.707.293l3 3a1 1 0 01-1.414 1.414L10 5.414 7.707 7.707a1 1 0 01-1.414-1.414l3-3A1 1 0 0110 3zm-3.707 9.293a1 1 0 011.414 0L10 14.586l2.293-2.293a1 1 0 011.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z" clip-rule="evenodd" />
                                      </svg>
                                  </button>
                              </span>
                          </x-slot>

                          <x-slot name="content">
                              <div class="w-60">
                                  <!-- Team Management -->
                                  <div class="block px-4 py-2 text-xs text-gray-400">
                                      {{ __('Manage Team') }}
                                  </div>

                                  <!-- Team Settings -->
                                  <x-jet-dropdown-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}">
                                      {{ __('Team Settings') }}
                                  </x-jet-dropdown-link>

                                  @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                                      <x-jet-dropdown-link href="{{ route('teams.create') }}">
                                          {{ __('Create New Team') }}
                                      </x-jet-dropdown-link>
                                  @endcan

                                  <div class="border-t border-gray-100"></div>

                                  <!-- Team Switcher -->
                                  <div class="block px-4 py-2 text-xs text-gray-400">
                                      {{ __('Switch Teams') }}
                                  </div>

                                  @foreach (Auth::user()->allTeams() as $team)
                                      <x-jet-switchable-team :team="$team" />
                                  @endforeach
                              </div>
                          </x-slot>
                      </x-jet-dropdown>
                  </div>
              @endif

              <!-- Settings Dropdown -->
              <div class="ml-3 relative">
                   @auth
                    
            
                      <x-jet-dropdown align="right" width="48">
                          <x-slot name="trigger">
                              @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                                  <button class="flex text-sm border-2 border-transparent rounded-full focus:outline-none focus:border-gray-300 transition">
                                      <img class="h-8 w-8 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                                  </button>
                              @else
                                  <span class="inline-flex rounded-md">
                                      <button type="button" class="inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-gray-500 bg-white hover:text-gray-700 focus:outline-none transition">
                                          {{ Auth::user()->name }}

                                          <svg class="ml-2 -mr-0.5 h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                                              <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                          </svg>
                                      </button>
                                  </span>
                              @endif
                          </x-slot>

                          <x-slot name="content">
                              <!-- Account Management -->
                              <div class="block px-4 py-2 text-xs text-gray-400">
                                  {{ __('Cuenta') }}
                              </div>

                              <x-jet-dropdown-link href="{{ route('profile.show') }}">
                                  {{ __('Profile') }}
                              </x-jet-dropdown-link>

                              @can('admin.home')
                                      <a href="{{ route('admin.home') }}" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Administrador</a>

                                      @endcan
                                      @role('stock')
                                      <a href="{{ route('inventary.index') }}" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Inventario</a>
                                       
                                     
                                      @endrole

                                      @can('Leer cursos')
                                          <a href="{{ route('instructor.courses.index') }}" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Instructor</a>
                                        @endcan
                                      

                                        
                                        <a href="{{ route('orders.index') }}" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Mis ordenes</a>

                              

                              @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                                  <x-jet-dropdown-link href="{{ route('api-tokens.index') }}">
                                      {{ __('API Tokens') }}
                                  </x-jet-dropdown-link>
                              @endif

                              <div class="border-t border-gray-100"></div>

                              <!-- Authentication -->
                              <form method="POST" action="{{ route('logout') }}">
                                  @csrf

                                  <x-jet-dropdown-link href="{{ route('logout') }}"
                                          onclick="event.preventDefault();
                                                  this.closest('form').submit();">
                                      {{ __('Log Out') }}
                                  </x-jet-dropdown-link>
                              </form>
                          </x-slot>
                      </x-jet-dropdown>

                      
                          
                  @else
                  <a href="{{ route('login') }}" class="text-sm text-white dark:text-gray-500 underline">Ingresar</a>
                  <a href="{{ route('register') }}" class="ml-4 text-sm text-white dark:text-gray-500 underline">Registro</a>
                  @endauth  
                  
              </div>
              <div class="hidden md:block md:ml-3">  
                @livewire('dropdown-cart') 
              </div> 
          </div>

          <!-- Hamburger -->
          <div class="-mr-2 flex items-center sm:hidden">
              <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition">
                  <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                      <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                      <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                  </svg>
              </button>
          </div>
      </div>
  </div>

  <!--  Movil -->
  <div :class="{'block': open, 'hidden': ! open}" class="text-white hidden sm:hidden">
      <div class="pt-2 pb-3 space-y-1">
        
          @foreach ($nav_links as $nav_link)

          <x-jet-responsive-nav-link style="color: #ffffff" href="{{ $nav_link['route'] }}" :active="$nav_link['active']">
              {{ $nav_link['name'] }}
          </x-jet-responsive-nav-link>

              
          @endforeach
      </div>

      <!-- Responsive Settings Options -->
      
      @auth
          
     
      <div class="pt-4 pb-1 border-t border-gray-200">
          <div class="flex items-center px-4">
              @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                  <div class="flex-shrink-0 mr-3">
                      <img class="h-10 w-10 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                  </div>
              @endif

              <div>
                  <div class="font-medium text-base text-white">{{ Auth::user()->name }}</div>
                  <div class="font-medium text-sm text-white">{{ Auth::user()->email }}</div>
              </div>
          </div>

          <div class="mt-3 space-y-1">
              <!-- Account Management -->
              <x-jet-responsive-nav-link class="text-white" href="{{ route('profile.show') }}" :active="request()->routeIs('profile.show')">
                  {{ __('Profile') }}
              </x-jet-responsive-nav-link>
                @can('admin.home')
                                      <a href="{{ route('admin.home') }}" class="block px-4 py-2 text-sm text-white" role="menuitem" tabindex="-1" id="user-menu-item-0">Administrador</a>

                                      @endcan
                                      @role('stock')
                                      <a href="{{ route('inventary.index') }}" class="block px-4 py-2 text-sm text-whit" role="menuitem" tabindex="-1" id="user-menu-item-0">Inventario</a>
                                       
                                     
                                      @endrole

                                      @can('Leer cursos')
                                          <a href="{{ route('instructor.courses.index') }}" class="block px-4 py-2 text-sm text-whit" role="menuitem" tabindex="-1" id="user-menu-item-0">Instructor</a>
                                        @endcan
                                      

                                        
                                        <a href="{{ route('orders.index') }}" class="block px-4 py-2 text-sm text-whit" role="menuitem" tabindex="-1" id="user-menu-item-0">Mis ordenes</a>

                              

                              @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                                  <x-jet-dropdown-link href="{{ route('api-tokens.index') }}">
                                      {{ __('API Tokens') }}
                                  </x-jet-dropdown-link>
                              @endif


              <!-- Authentication -->
              <form method="POST" action="{{ route('logout') }}">
                  @csrf

                  <x-jet-responsive-nav-link  class="text-white" href="{{ route('logout') }}"
                                 onclick="event.preventDefault();
                                  this.closest('form').submit();">
                      {{ __('Log Out') }}
                  </x-jet-responsive-nav-link>
              </form>

              <!-- Team Management -->
              @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                  <div class="border-t border-gray-200"></div>

                  <div class="block px-4 py-2 text-xs text-gray-400">
                      {{ __('Manage Team') }}
                  </div>

                  <!-- Team Settings -->
                  <x-jet-responsive-nav-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}" :active="request()->routeIs('teams.show')">
                      {{ __('Team Settings') }}
                  </x-jet-responsive-nav-link>

                  @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                      <x-jet-responsive-nav-link href="{{ route('teams.create') }}" :active="request()->routeIs('teams.create')">
                          {{ __('Create New Team') }}
                      </x-jet-responsive-nav-link>
                  @endcan

                  <div class="border-t border-gray-200"></div>

                  <!-- Team Switcher -->
                  <div class="block px-4 py-2 text-xs text-gray-400">
                      {{ __('Switch Teams') }}
                  </div>

                  @foreach (Auth::user()->allTeams() as $team)
                      <x-jet-switchable-team :team="$team" component="jet-responsive-nav-link" />
                  @endforeach
              @endif
          </div>
      </div>
    
      @else
          <div class="py-1 border-t border-gray-200 text-white ">
              <x-jet-responsive-nav-link   class="text-white" href="{{ route('login') }}" :active="request()->routeIs('login')">
                 Ingresar 
              </x-jet-responsive-nav-link>
              <x-jet-responsive-nav-link   class="text-white" href="{{ route('register') }}" :active="request()->routeIs('register')">
                  Registrar 
              </x-jet-responsive-nav-link>
          </div>
      @endauth

  </div>


</header>