<x-app-layout>
    

    <!-- component -->
<section >

        <div class="float-right lg:block hidden">
            <img class="w-40 mr-4" src="{{asset('img/logo.png')}}" >   
         </div>

        <div class="flex items-center  justify-center ">
              <div class="bg-white shadow-lg rounded-lg " style="width: 45rem !important;">
                    <div class=" p-6">
                        <h2 class="font-bold ml-4 text-3xl text-center text-white bg-gradient-to-r from-blue-700 to-red-600"><hr>Meditaciónes <strong>Neurosintergia</strong> <hr></h2>
                    </div> 
                   
                    <div class="flex justify-between px-6">
                        <h2 class="font-bold ml-4 text-3xl text-center ">Lista</h2>
                        <button  id="shuffle" class="btn btn-success ml-4 mt-0 text-white bg-green-600"><i class="fa fa-random"></i></button>                           
                     
                    </div>  

                     <div class="grid p-6 grid-cols-1 lg:grid-cols-4 ">
                     
                        <div class="lg:justify-center mb-4 col-span-2 rounded-lg shadow-2xl bg-gray-200" >       
                            <ul class="list-group font-bold ml-4  cursor-pointer p-1" id="playlist"> </ul>     
                        </div>                      
                        
                        <div class="col-span-2">           
                             <div class=" items-center" >
                                <img src="{{asset('img/itsw.png')}}" id="img-album" class=" justify-center  ml-4 rounded-xl w-80 h-40 object-cover" alt="">        

                              <audio id="player" class="w-full" controls=""  controlslist="nodownload"></audio>                        
                             </div>
                        </div>
                    
                    </div>
                </div>  
        
        </div>
    
    </section>




@push('script')

<script>   
$(document).ready(function(){
    initPlayer();
 getSongs();
});

var audio = document.getElementById('player');
var music;

function initPlayer(){
    $('#shuffle').click(function(){
        $('#playlist').empty();
        console.log(shuffle(music.songs));
        genList(music);
        playSong(0);
    });
}

function getSongs(){


    
    
    $.getJSON("js/audio.json" , function(mjson){
        music = mjson;
        genList(music);
    }); 
}

function playSong(id){
    console.log(id);
    var long = music.songs;
    if(id>=long.length){
        console.log('se acabo')
        audio.pause();
    }else{
        $('#img-album').attr('src',music.songs[id].image);
        $('#player').attr('src',music.songs[id].song);
        audio.play();
        console.log('hay mas canciones');
        scheduleSong(id);
    }
    
}

function genList(music){
    $.each(music.songs,function(i,song){
        $('#playlist').append('<li class="list-group-item" id="'+i+'">'+song.name+'</li>')
    });
    $('#playlist li').click(function(){
        var selectedsong = $(this).attr('id');
 
        playSong(selectedsong);
    });
}

function scheduleSong(id){
    audio.onended = function(){
        console.log('Termino la canción');
        playSong(parseInt(id)+1);
    }
}

function shuffle(array){
    for(var random, temp, position = array.length; position; random = Math.floor(Math.random()*position),temp = array[--position], array[position]=array[random],array[random]=temp);
    return array;
}
</script> 




  
@endpush
</x-app-layout>