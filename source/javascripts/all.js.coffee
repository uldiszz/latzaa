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
    $('#footer').slideDown()
    $('.about').animate({ opacity: 1 }, 650)
    $('.big-logo').slideUp()
)()

# Pages
( ->
  $(document).on 'ready', () ->
    $('#about').animate({ opacity: 1 }, 650)
    $('#members').animate({ opacity: 1 }, 650)
    $('#contacts').animate({ opacity: 1 }, 650)
)()

# Members
( ->
  $('.collapse').on 'click', (e) ->
    $parent = $(e.target).parent().parent()
    $parent.find('.about').slideToggle('fast')
    $parent.find('.description').slideToggle('fast')
    $parent.find('.more').toggle()
    $parent.find('.less').toggle()
)()
