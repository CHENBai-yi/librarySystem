<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>联系我们</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<style>
    .chat-container {
        height: 400px;
        overflow-y: auto;
        border: 1px solid #ccc;
        padding: 10px;
    }

    .message {
        margin-bottom: 10px;
        border-radius: 5px;
        padding: 10px;
    }

    .message.sender {
        background-color: #dcf8c6;
        align-self: flex-end;
    }

    .message.receiver {
        background-color: #fff;
    }

    .input-container {
        margin-top: 10px;
    }
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<h1 class="text-center my-4">聊天</h1>
			<div class="chat-container" id="chatContainer"></div>
			<div class="input-container">
				<div class="input-group">
					<input type="text" class="form-control" id="messageInput" placeholder="Type your message">
					<button class="btn btn-primary" onclick="sendMessage()">Send</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/mhDoLbDldZc3qpsJHpLogda//BVZbgYuw6kof4u2FrCedxOtgRZDTHgHUhOCVim"
        crossorigin="anonymous"></script>
<script>
    var socket = new WebSocket("ws://your-websocket-server-url");

    socket.onopen = function (event) {
        console.log("WebSocket connection established.");
    };

    socket.onmessage = function (event) {
        var message = event.data;
        appendMessage(message);
    };

    function sendMessage() {
        var messageInput = document.getElementById("messageInput");
        var message = messageInput.value;

        if (message.trim() !== "") {
            socket.send(message);
            appendMessage(message);

            messageInput.value = "";
        }
    }

    function appendMessage(message) {
        var chatContainer = document.getElementById("chatContainer");
        var senderMessage = document.createElement("div");
        senderMessage.className = "message sender";
        senderMessage.innerHTML = "<p>" + message + "</p>";
        chatContainer.appendChild(senderMessage);

        // Scroll to bottom
        chatContainer.scrollTop = chatContainer.scrollHeight;
    }
</script>
</body>
</html>
