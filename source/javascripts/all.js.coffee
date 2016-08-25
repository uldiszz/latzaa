# Dropdowns
( ->
  for dropdown in document.getElementsByClassName('dropdown')
    toggler = dropdown.querySelector('[data-toggle="dropdown"]')
    if toggler
      toggler.addEventListener "click", (event) ->
        dropdown.classList.toggle "open"
)()
