class window.Flash

  @notice: (titulo, msg) ->
    
    flash_div = $('.flash_msg')
    flash_div.find('.titulo').html(titulo)
    flash_div.find('.msg').html(msg)

    flash_div.slideDown ()->
      setTimeout(Flash.fecha, 6000)

  @fecha: ->
    $('.flash_msg').slideUp()


class window.Validador

  @email: (email) ->
    re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    re.test(email)

