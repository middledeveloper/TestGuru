document.addEventListener('turbolinks:load', function () {
    var control = document.querySelector('#timer')
    var seconds_control = document.querySelector('#seconds_left')

    if (control && seconds_control) {
      var duration = seconds_control.textContent
      startTimer(duration, control);

    }
})

function startTimer(duration, control) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
      if (--timer > 0) {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        control.textContent = minutes + ":" + seconds;
      } else {
        window.location.reload();
      }
    }, 1000);
}
