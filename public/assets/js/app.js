const btnReaccion = document.getElementById('reaccion');
const contenedorListaMusic = document.getElementById('lista-music');
const controles = document.getElementById('controles');

const menuMusic = document.getElementById('menuMusic');
const titlePlaylist = document.getElementById('titlePlaylist');
const playDescription = document.getElementById('playDescription');
const imgAlbum = document.getElementById('imgAlbum');
const album = document.getElementById('album');

//Eventos
btnReaccion.addEventListener('click', likear);
menuMusic.addEventListener('click', cargarInfo);
contenedorListaMusic.addEventListener('click', reproducirMusica);
controles.addEventListener('click', controlar)
    //Funciones
let estado = 0;

function likear() {
    if (estado === 0) {
        btnReaccion.classList.add('reaccion-activa');
        estado = 1;
    } else if (estado === 1) {
        btnReaccion.classList.remove('reaccion-activa');
        estado = 0;
    }
}


function cargarInfo(e) {
    let jsonurl = '';
    let titlePlay = '';
    let descripcionPlay = '';
    let srcImg = '';

    if (e.target.classList.contains('playEstudiar')) {
        jsonurl = 'assets/musicJSON/estudiando.json';
        titlePlay = 'Audio Libros';
        descripcionPlay = 'Escucha a los mejores autores';
        srcImg = 'assets/img/estudiando.jpg';
        album.style.background = "linear-gradient(to right, rgba(2, 2, 2, 0.726) 15%, rgba(8, 8, 8, 0.829)), url(assets/img/estudiando.jpg)";
    } else if (e.target.classList.contains('playRock')) {
        jsonurl = 'assets/musicJSON/rock.json';
        titlePlay = 'Meditación Neurosintérgica';
        descripcionPlay = 'Sanacion, Equilibrio, Conciencia, Unidad';
        srcImg = 'assets/img/rockear.jpg';
        album.style.background = "linear-gradient(to right, rgba(2, 2, 2, 0.726) 15%, rgba(8, 8, 8, 0.829)), url(assets/img/rockear.jpg)";
    } else if (e.target.classList.contains('playDeporte')) {
        jsonurl = 'assets/musicJSON/deporte.json';
        titlePlay = 'Conferencias - Talleres - Investigación ';
        descripcionPlay = 'Academy of Consciousness';
        srcImg = 'assets/img/deporte2.jpg';
        album.style.background = "linear-gradient(to right, rgba(2, 2, 2, 0.726) 15%, rgba(8, 8, 8, 0.829)), url(assets/img/deporte2.jpg)";
    }
    titlePlaylist.innerHTML = titlePlay;
    playDescription.innerHTML = descripcionPlay;
    imgAlbum.src = srcImg;
    cargarMusica(jsonurl);
}

function cargarMusica(url) {
    fetch(url)
        .then(function(res) {
            return res.json();
        })
        .then(function(data) {
            let html = '';
            data.forEach(music => {
                html += `
        


                <li class="music text-center">
                    <input type="text" value="${music.url}" style="display: none;">
                    <a href="#" id="${music.id}" class="btn play-music"><i class="far fa-play-circle"></i></a>
                    
                    <h3 class="ml-6" >${music.playlist}</h3> 
                    <h3 class="m-4">${music.artista}</h3> 
                    <h3 id="name">${music.nombre}</h3> 
                  
                </li>
                `
                contenedorListaMusic.innerHTML = html;
            });
        });
}

function reproducirMusica(e) {
    if (e.target.parentElement.classList.contains('play-music')) {
        let urlM = e.target.parentElement.previousElementSibling.value;
        controles.innerHTML = `<a href="#" class="btn control atras"><i class="fas fa-backward"></i></a>
        <audio src="${urlM}" style="width: 50vw;"  controls=""  controlslist="nodownload" autoplay><input type="text" value="${urlM}" style="display: none;"></audio>
        <a href="#" class="btn control siguiente"><i class="fas fa-forward"></i></a>`;

        e.target.parentElement.classList.add('reaccion-activa-reproducida');
        siguienteAutomatico();
    }
}

function controlar(e) {
    let audio = e.target.parentElement.parentElement.children[1].children[0];
    let audioUrl = audio.value;

    let musicArray = Array.from(contenedorListaMusic.children);

    if (e.target.parentElement.classList.contains('siguiente')) {
        musicArray.forEach(limusic => {
            if (limusic.children[0].value === audioUrl) {
                let siguienteMusica = limusic.nextElementSibling.children[0].value;

                let elementoParaReproducido = limusic.nextElementSibling.children[1];
                siguienteAtras(siguienteMusica, elementoParaReproducido)
            }
        });
    }
    if (e.target.parentElement.classList.contains('atras')) {
        musicArray.forEach(limusic => {
            if (limusic.children[0].value === audioUrl) {
                let musicaAtras = limusic.previousElementSibling.children[0].value;

                let elementoParaReproducido = limusic.previousElementSibling.children[1];
                siguienteAtras(musicaAtras, elementoParaReproducido)
            }
        });
    }
}

function siguienteAtras(musica, reproducida) {
    controles.innerHTML = `<a href="#" class="btn control atras"><i class="fas fa-backward"></i></a>
    <audio src="${musica}" style="width: 50vw;" controls="" controlslist="nodownload"  autoplay><input type="text" value="${musica}" style="display: none;"></audio>
    <a href="#" class="btn control siguiente"><i class="fas fa-forward"></i></a>`;
    reproducida.classList.add('reaccion-activa-reproducida');

    siguienteAutomatico();
}

function siguienteAutomatico() {
    let audioEtiqueta = controles.children[1];
    audioEtiqueta.addEventListener('ended', () => {
        let audioUrl = audioEtiqueta.children[0].value;
        let musicArray = Array.from(contenedorListaMusic.children);
        musicArray.forEach(limusic => {
            if (limusic.children[0].value === audioUrl) {
                let siguienteMusica = limusic.nextElementSibling.children[0].value;

                let elementoParaReproducido = limusic.nextElementSibling.children[1];
                siguienteAtras(siguienteMusica, elementoParaReproducido)
            }
        });
    })
}