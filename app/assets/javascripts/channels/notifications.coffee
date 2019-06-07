App.notifications = App.cable.subscriptions.create "NotificationsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # new Notification(data["title"], body: data["body"])
    # alert('received data')
    console.log(data)
    a = $('#messages_number').text()
    $('#messages_number').text(1 + parseInt(a))
    # $("#messages_number").val(a)
    $("#messages_content").prepend("<a class='dropdown-item' href='#'>"+ data.message + "</a>")
    

  send_message: ->
    @perform 'send_message'
