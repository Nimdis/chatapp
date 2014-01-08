Template.messages.messages = () ->
    Messages.find {}, { sort: { time: -1 }}
