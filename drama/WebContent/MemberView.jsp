<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="memberview.css">
<body>
    <!-- 메뉴바 -->
    <div id="box">

      <div id="menu">
         <c:choose>
            <c:when test="${sessionScope.idCheck == null}">
            <div id="login">
            	<form action="MemberLogin" method="post">
                <label for="label_id"><span class="title">ID </span></label><input type="text" id="label_id" name="id"> <br>
                <label for="label_pw"><span class="title">PW </span></label><input type="password" id="label_pw" name="pw"> <br>
                <div id="btn_1"><button class="btn" type="button" onclick="JoinForm.jsp">회원가입</button> <button class="btn" onclick="submit">로그인</button></div>
                </form>
            </div>
            <br>
            </c:when>
            <c:otherwise>
            <div id="logo">
                <span class="title">${sessionScope.idCheck}님</span>
                <span id="level"><img src="등급/3. 주황.gif" alt="등급"></span>
                <div><button type="button" onclick="location.href='MemberLogout'" class="btn">로그아웃</button> </div>
            </div>	
            </c:otherwise>
        </c:choose>
        <nav id="nav">
            <ul>
                <li><a  id="top-link" onclick="LoginCheck()">예매하기</a></li>
                <br><br>
                <li><a href="#" id="portfolio-link" onclick="LoginCheck2()">회원수정</a></li>
                <br><br>
                <li><a id="about-link" onclick="LoginCheck3()">예매내역</a></li>
                <br><br>
                <li><a id="contact-link" onclick="LoginCheck4()">회원탈퇴</a></li>
            </ul>
        </nav>
        </div>
        
        
        <div id="banner">
        <div id="mark">로고</div>
        <div id="search">검색창</div>
        </div>


		<div id="main">
            <div id="view_header">
                <h1>회원정보 상세보기</h1>
            </div>
            <div id="view_body">
                <table style="width: 50%; height: 50%; margin: auto;">
                    <tr style="height: 30%;">
                        <td>이름</td>
                        <td>아이디</td>
                        <td>연락처</td>
                        <td style="width: 10%;">등급</td>
                        <td>구매횟수</td>
                        <td>생년월일</td>
                    </tr>
                    <tr>
                        <td>${Modify.name }</td>
                        <td>${Modify.id }</td>
                        <td>${Modify.phone }</td>
                        <td>${Modify.rank }</td>
                        <td>${Modify.buy }</td>
                        <td>${Modify.birth }</td>                        	
                    </tr>
                </table>
            </div>
            <div id="view_foot">
                <input type="button" onclick="location.href='ModifyProcess'" value="수정하기">
                <input type="button" onclick="MemberDelete()" value="회원탈퇴">
            </div>



        </div>

	</div>

</body>
<script type="text/javascript">
   function MemberDelte(){
      var pw = "${MemberView.pw}";
      var checkpw = prompt("비밀번호>");
      if(pw == checkpw){
         location.href='MemberDelet?id=${MemberView.id}';
      } else{
         alert("비밀번호가 틀립니다.")
      }
   }
</script>
</html>
