document.addEventListener("DOMContentLoaded", function() { initialiseMediaPlayer(); }, false);
var mediaPlayer;

function initialiseMediaPlayer() {
    mediaPlayer = document.getElementById('video--view');
    mediaPlayer.controls = false;
    mediaPlayer.addEventListener('timeupdate', updateProgressBar, false);
}


function playvideo() {
    var btn = document.getElementById('btnplay');
    if (mediaPlayer.paused || mediaPlayer.ended) {
        btn.title = 'pause';
        btn.style.backgroundImage="url(images/videocontrol/ic_playing.png)";
        mediaPlayer.play();
    } else {
        btn.title = 'play';
        btn.style.backgroundImage="url(images/videocontrol/ic_play.png)";
        mediaPlayer.pause();
    }

}

function nextvideo() {
    document.getElementById('video--view').play();
    // changeButtonType(btnplay,'pause');

}

function previewvideo() {
	var progressBar = document.getElementById('progress-bar');
    progressBar.value = 0;
   mediaPlayer.currentTime = 0;
   // changeButtonType(playPauseBtn, 'play');

}

function fullscreen(){
    if (mediaPlayer.requestFullscreen) {
    mediaPlayer.requestFullscreen();
  } else if (mediaPlayer.mozRequestFullScreen) {
    mediaPlayer.mozRequestFullScreen(); // Firefox
  } else if (mediaPlayer.webkitRequestFullscreen) {
    mediaPlayer.webkitRequestFullscreen(); // Chrome and Safari
  }

}

function changeVolume(direction) {
    // if (direction === '+') 
    mediaPlayer.volume += mediaPlayer.volume == 1 ? 0 : 0.1;
    // else mediaPlayer.volume -= (mediaPlayer.volume == 0 ? 0 : 0.1);
    mediaPlayer.volume = parseFloat(mediaPlayer.volume).toFixed(1);
}

function updateProgressBar() {
   var progressBar = document.getElementById('progress-bar');
   var percentage = Math.floor((100 / mediaPlayer.duration) *
   mediaPlayer.currentTime);
   progressBar.value = percentage;
   progressBar.innerHTML = percentage + '% played';
}