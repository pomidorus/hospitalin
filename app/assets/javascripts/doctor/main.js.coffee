PatientMessages =
  init: ->
    message_form = $('.message_form')
    reply = $('.reply')
    next_message = $('.next_message')

    message_reply = $('.message_reply .action_reply')
    message_later = $('.message_reply .action_later')

    message_reply.bind('click', (e) ->
      message_form.removeClass('hidden')
      message_later.addClass('hidden')
      $(@).addClass('hidden')
    )

    action_close = $('.action_close')
    action_close.bind('click', (e) ->
      message_form.addClass('hidden')
      message_reply.removeClass('hidden')
      message_later.removeClass('hidden')
    )

    action_write = $('.action_write')
    action_write.bind('click', (e) ->
      message_form.addClass('hidden')
      reply.removeClass('hidden')
      next_message.removeClass('hidden')
    )

    next_message.bind('click', (e) ->
      message_reply.removeClass('hidden')
      message_later.removeClass('hidden')
      reply.addClass('hidden')
      $(@).addClass('hidden')
    )
    console.log message_reply




$ ->
  PatientMessages.init()
