@props(['active'])

@php
$classes = ($active ?? false)
            ? 'block pl-3 pr-4 py-2 border-l-8 border-white text-xl font-medium text-black bg-blue-500  focus:outline-none focus:text-black focus:bg-yellow  transition'
            : 'block pl-3 pr-4 py-2 border-l-4 border-transparent text-lg font-medium text-white hover:text-indigo-400  hover:bg-grey-800 hover:border-white focus:outline-none focus:text-red  focus:border-gray-300 transition';
@endphp

<a {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
