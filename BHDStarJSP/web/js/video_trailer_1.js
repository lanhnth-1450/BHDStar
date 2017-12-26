document.addEventListener("DOMContentLoaded", function() { initialiseMediaPlayer(); }, false);
var mediaPlayer;
var player;
var done;

function initialiseMediaPlayer() {
    
    mediaPlayer = document.getElementById('video--view');
    if (mediaPlayer.style.display == 'none') {
        mediaPlayer.pause();
    }
    mediaPlayer.controls = false;
    document.getElementById('progress-bar').addEventListener('click', function(e) {
        var x = e.pageX - this.offsetLeft, // or e.offsetX (less support, though)
            y = e.pageY - this.offsetTop, // or e.offsetY
            clickedValue = x * this.max / this.offsetWidth;
        // document.getElementById('progress-bar').value=clickedValue-80;
        console.log(clickedValue);
        var position = (clickedValue - 62) / 100;
        var time=position * player.getDuration();
        player.seekTo(time);
    });
    var volune = document.getElementById('progress-volune');
    volune.addEventListener('click', function(e) {
        var x = e.pageX - this.offsetLeft, // or e.offsetX (less support, though)
            y = e.pageY - this.offsetTop, // or e.offsetY
            clickedValue = x * this.max / this.offsetWidth-521;
            console.log(clickedValue);
        volune.value = clickedValue;
        player.setVolume(clickedValue);

    });
    
    player.addEventListener("onStateChange", updateProgressBar);
}
function onYouTubeIframeAPIReady() {
player = new YT.Player('video--view', {
    events: {
        'onReady': onPlayerReady,
        'onStateChange': onPlayerStateChange
    }
});

}

function playvideo() {
    var btn = document.getElementById('btnplay');
        if (done) {
        done = false;
        player.pauseVideo();

    } else {
        done = true;
        player.playVideo();
    }

}

function fastspeed() {
    var rate=player.getPlaybackRate();
    if (rate<2.0) {
        rate+=0.5;
    }
    player.setPlaybackRate(rate);

}

function slowspeed() {
    var rate=player.getPlaybackRate();
    if (rate>0.5) {
        rate-=0.5;
    }
    player.setPlaybackRate(rate);
}

function previewvideo() {
    var progressBar = document.getElementById('progress-bar');
    progressBar.value = 0;
    player.seekTo(0);

}
function none_click(){
    var tag=document.getElementById('id--tag');
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
    var dura=mediaPlayer.duration;
    var progressBar = document.getElementById('progress-bar');
    var curent = player.getCurrentTime();
    var per;
    if (YT.PlayerState.PLAYING) {
        fomattimevideo(curent);
        setTimeout(updateProgressBar, 0);
        var percentage = Math.floor((100 / player.getDuration()) *
            curent);
        progressBar.value = percentage;

    }

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
    } else if (mm > 0 && mm < 10) {
        time += "0" + mm + ":";
    } else {
        time += mm + ":";
    }
    if (ss < 10) {
        time += "0" + ss;
    } else {
        time += ss;
    }
    durationtime.innerHTML = time;
}



var tag = document.createElement('script');
tag.id = 'iframe-demo';
tag.src = 'https://www.youtube.com/iframe_api';
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);


function onPlayerReady(event) {
    event.target.playVideo();
    var dura = player.getDuration();
    durationvideo(dura);

}
function stopVideo() {
    player.stopVideo();
}


function onPlayerStateChange(event) {
    var btn = document.getElementById('btnplay');
    switch (event.data) {
        case YT.PlayerState.PLAYING:
            done=true;
            updateProgressBar();
            btn.title = 'pause';
            btn.style.backgroundImage = "url(images/videocontrol/ic_playing.png)";
            break;
        case YT.PlayerState.PAUSED:
            done=false;
            btn.title = 'pause';
            btn.style.backgroundImage = "url(images/videocontrol/ic_play.png)";

            break;
    };
};