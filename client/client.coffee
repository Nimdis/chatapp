Template.messages.messages = () ->
    Messages.find {}, { sort: { time: -1 }}

Template.input.events =
  'keydown input#message': (e) ->
    if e.which == 13
      name = 'Anon'
      message = $('#message')

      if message.val() != ''
        Messages.insert
          name: name,
          message: message.val(),
          time: Date.now()

        message.val('')
