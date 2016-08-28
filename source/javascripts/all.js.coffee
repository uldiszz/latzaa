# Dropdowns
( ->
  for dropdown in $('.dropdown')
    $(dropdown.querySelector('[data-toggle="dropdown"]')).on 'click', () ->
      $('.dropdown-menu').slideToggle()
)()

# Intro toggle
( ->
  $('#intro').on 'click', () ->
    $('#header').slideDown()
    $('.about').slideDown()
    $('.big-logo').slideUp()
)()

# Pages
( ->
  $(document).on 'ready', () ->
    $('#about').animate({ opacity: 1 }, 650)
    $('#members').animate({ opacity: 1 }, 650)
    $('#contacts').animate({ opacity: 1 }, 650)
)()
