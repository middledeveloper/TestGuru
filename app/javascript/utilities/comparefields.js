document.addEventListener('turbolinks:load', function() {
    var confirm = document.querySelector('#user_password_confirmation')
    var icon = document.querySelector('.octicon-verified')

    if (confirm) {
        confirm.addEventListener('input', compareFields)
    }
})

function compareFields() {
  var field1 = document.querySelector('#user_password')
  var field2 = document.querySelector('#user_password_confirmation')

  if (field2.value.length > 0) {
      if (field1.value === field2.value) {
        icon.classList.remove('text-danger')
        icon.classList.add('text-success')
      } else {
        icon.classList.remove('text-success')
        icon.classList.add('text-danger')
      }

      icon.classList.remove('hide')
  } else {
      icon.classList.add('hide')
  }
}
