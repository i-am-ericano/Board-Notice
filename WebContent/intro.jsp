<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="intro.css">
<title>INTRO</title>
</head>
<body>
<!-- The video -->
<video autoplay id="myVideo">
  <source src="intro.mp4" type="video/mp4">
</video>
<div class="content">
  <!-- Use a button to pause/play the video with JavaScript -->
  <button id="myBtn" onclick="location.href='index.jsp'">Skip</button>
</div>
<script>
document.getElementById('myVideo').addEventListener('ended', function(){
	location.href="index.jsp";
});
</script>
</body>
</html>