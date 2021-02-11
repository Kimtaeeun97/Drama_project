<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="memberview.css">
<body>
    <!-- 메뉴바 -->
    <div id="box">

        <div id="menu">
            <div id="login">
                <label for="label_id"><span class="title">ID </span></label><input type="text" id="label_id"> <br>
                <label for="label_pw"><span class="title">PW </span></label><input type="password" id="label_pw"> <br>
                <div id="btn_1"><button class="btn">회원가입</button> <button class="btn">로그인</button></div>
            </div>
            <br>
            <hr>
            <div id="logo">
                <span class="title">elmosibar 님</span>
                <span id="level"><img src="inha/img/등급/1. 민트.gif" alt="등급"></span>
                <div><button class="btn">로그아웃</button> </div>
            </div>
            <hr>
        <nav id="nav">
            <ul>
                <li><a href="#1" id="top-link">예매하기</a></li>
                <br><br>
                <li><a href="#2" id="portfolio-link">회원수정</a></li>
                <br><br>
                <li><a href="#3" id="about-link">예매내역</a></li>
                <br><br>
                <li><a href="#4" id="contact-link">회원탈퇴</a></li>
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
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데아터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                    </tr>
                </table>
            </div>
            <div id="view_foot">
                <input type="button" value="수정하기">
                <input type="button" value="회원탈퇴">
            </div>



        </div>

	</div>
</body>
</html>