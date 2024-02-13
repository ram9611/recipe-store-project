<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>CHAT WEB</title>
   <script src="js/jquery-3.6.3.min.js"></script>
   <script>
      let webSocket = 
                 new WebSocket("ws://localhost:9090/WebProject1/broadcasting");
      webSocket.onmessage = function(e) {
         $("#div_message").append("<p class='chat'>"+e.data+"</p>");
      }
      webSocket.onopen = function(e) {
         $("#div_message").append("<p class='chat'>채팅에 참여하였습니다</p>");
      }
      webSocket.onerror = function(e) {
         alert("error!");
      }
      
      $(function() {
         $("#btn_send").click(function() {
            let my_id = $("#id_chat").val();
            let msg = $("#input_message").val();
            webSocket.send(my_id + "|" + msg);
            $("#div_message").append("<p class='chat'>나 : " + msg + "</p>");
         });
      });
   </script>
</head>
<body>
   My ID : <input type="text" id="id_chat" value="(Your Name)"/><br/>
   Chat :
   <div id="div_message">
      <input type="text" id="input_message"/>
      <input type="button" id="btn_send" value="전송"/>
   </div>
</body>
</html>
