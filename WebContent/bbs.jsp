<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>BBS(Board List)</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="bbs.jsp">게시판</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="faq.jsp">FAQ</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	접속하기
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="login.jsp">로그인</a>
          <a class="dropdown-item" href="join.jsp">회원가입</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="toGoList.jsp">to go list</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div align="center">
<br><br>
<table style="width:960; cellpadding:3; ">
<tr><td bgcolor="e9e9e9" height ="25" align="center">글쓰기</td></tr></table>
<br/>
<form name="postFrm" method="post" action="postProc.jsp">
<table style="width:960; cellpadding:3;align:center">
<tr><td align=center>
<table style="width:960; cellpadding:3; align:center"><tr>
<td width="10%">성명</td>
<td width="90%">
<input name="mem_name" size="10" maxlength="8"></td></tr><tr><td>제목</td><td><input name="title" size="50" maxlength="30">
</td></tr>
<tr><td>내용</td>
<td><textarea name="content" rows="10" cols="50"></textarea></td></tr>

<tr>
<td>비밀 번호</td>
<td><input type="password" name="pass" size="15" maxlength="15"></td>
</tr>

<tr>
<td>내용타입</td>
<td> HTML<input type=radio name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
TEXT<input type=radio name="contentType" value="TEXT" checked>
</td>
</tr>

<tr>
<td colspan="2"><hr/></td>
</tr>

<tr>
<td colspan="2">
<input type="submit" value="등록">
<input type="reset" value="다시쓰기">
<input type="button" value="리스트" onClick="javascript:location.href="BoardList.jsp'">
</td>
</tr>
</table>
</td>
</tr>
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>


	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>