document.addEventListener("DOMContentLoaded", function() { initialiseMediaPlayer(); }, false);
var mediaPlayer;

function initialiseMediaPlayer() {
    mediaPlayer = document.getElementById('video--view');
    if (mediaPlayer.style.display == 'none') {
        mediaPlayer.pause();
    }
    mediaPlayer.controls = false;
    document.getElementById('progress-bar').addEventListener('click', function(e) {
        var x = e.pageX - this.offsetLeft, // or e.offsetX (less support, though)
            y = e.pageY - this.offsetTop, // or e.offsetY
            clickedValue = x * this.max / this.offsetWidth,
            isClicked = clickedValue <= this.value;
        var position = (clickedValue - 70) / 100;
        mediaPlayer.currentTime = position * mediaPlayer.duration;
    });
    var volune= document.getElementById('progress-volune');
    volune.addEventListener('click', function(e) {
        var x = e.pageX - this.offsetLeft, // or e.offsetX (less support, though)
            y = e.pageY - this.offsetTop, // or e.offsetY
            clickedValue = x * this.max / this.offsetWidth-670;
            volune.value=clickedValue;
            var z=clickedValue/100;
            mediaPlayer.volume=z;
            
    });
    mediaPlayer.addEventListener('timeupdate', updateProgressBar, false);

}


function playvideo() {
    var btn = document.getElementById('btnplay');
    var durationtime = mediaPlayer.duration;
    durationvideo(durationtime);
    if (mediaPlayer.paused || mediaPlayer.ended) {
        btn.title = 'pause';
        btn.style.backgroundImage = "url(images/videocontrol/ic_playing.png)";
        mediaPlayer.play();
    } else {
        btn.title = 'play';
        btn.style.backgroundImage = "url(images/videocontrol/ic_play.png)";
        mediaPlayer.pause();
    }

}

function fastspeed() {
    mediaPlayer.playbackRate += mediaPlayer.playbackRate == 2.0 ? 0 : 0.2;
    mediaPlayer.play();
    // changeButtonType(btnplay,'pause');

}

function slowspeed() {
    mediaPlayer.playbackRate -= mediaPlayer.playbackRate == 0.1 ? 1.0 : 0.2;
    mediaPlayer.play();
    // changeButtonType(btnplay,'pause');

}

function previewvideo() {
    mediaPlayer.playbackRate = 1.0;
    var progressBar = document.getElementById('progress-bar');
    progressBar.value = 0;
    mediaPlayer.currentTime = 0;

}

function fullscreen() {
    if (mediaPlayer.requestFullscreen) {
        mediaPlayer.requestFullscreen();
    } else if (mediaPlayer.mozRequestFullScreen) {
        mediaPlayer.mozRequestFullScreen(); // Firefox
    } else if (mediaPlayer.webkitRequestFullscreen) {
        mediaPlayer.webkitRequestFullscreen(); // Chrome and Safari
    }

}

function changeVolume(direction) {
    
    mediaPlayer.volume = direction;
}

function updateProgressBar() {
    var progressBar = document.getElementById('progress-bar');
    var percentage = Math.floor((100 / mediaPlayer.duration) *
        mediaPlayer.currentTime);
    var timecurent = mediaPlayer.currentTime;
    fomattimevideo(timecurent);
    progressBar.value = percentage;
    progressBar.innerHTML = percentage + '% played';
    // var dura=mediaPlayer.duration;

}

function fomattimevideo(timevideo) {
    var curenttime = document.getElementById('curentime');
    var ss, mm;
    var time = "";
    mm = parseInt(timevideo / 60);
    ss = parseInt(timevideo % 60);
    if (mm == 0) {
        time += "00:";
    } else {
        time += "0" + mm + ":";
    }
    if (ss < 10) {
        time += "0" + ss;
    } else {
        time += ss;
    }
    curenttime.innerHTML = time;
}

function durationvideo(timevideo) {
    var durationtime = document.getElementById('durationtime');
    var ss, mm;
    var time = "";
    mm = parseInt(timevideo / 60);
    ss = parseInt(timevideo % 60);
    if (mm == 0) {
        time += "00:";
    } else {
        time += "0" + mm + ":";
    }
    if (ss < 10) {
        time += "0" + ss;
    } else {
        time += ss;
    }
    durationtime.innerHTML = time;
}