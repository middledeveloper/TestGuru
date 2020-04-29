document.addEventListener('turbolinks:load', function () {
    var control = document.querySelector('.progress-bar')

    if (control) {
      control.style.width = control.dataset.percent + '%'
    }
})
