<x-admin-layout>

    <div class="container py-12">
        @livewire('admin.create-categorii')

    </div>
    @push('script')
        <script>
            Livewire.on('deleteCategorii', categoriiSlug => {

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
                        Livewire.emitTo('admin.create-categorii', 'delete', categoriiSlug)
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
</x-admin-layout>
