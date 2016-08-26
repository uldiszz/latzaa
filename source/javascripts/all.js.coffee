# Dropdowns
( ->
  for dropdown in document.getElementsByClassName('dropdown')
    toggler = dropdown.querySelector('[data-toggle="dropdown"]')
    if toggler
      toggler.addEventListener "click", (event) ->
        dropdown.classList.toggle "open"
)()

# Intro toggle
( ->
  introPage = document.getElementById('intro')
  if introPage
    introPage.addEventListener 'click', (event) ->
      for el in document.getElementsByClassName('about')
        el.style.display = 'block'
      document.getElementById('header').style.display = 'block'
      for el in document.getElementsByClassName('big-logo')
        el.style.display = 'none'
)()
