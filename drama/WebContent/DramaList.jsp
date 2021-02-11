<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DramaList.jsp</title>
<style>
table,tr,td{
	margin: 30px;
	padding: 10px;
	margin: 10px;

}

span{
	color: red;
}
#file{
	padding-left: 35px;
	padding-right: 35px;
}
#td1{
	padding-bottom: 30px;
}
#td2{
	padding-top: 30px;
}
</style>
<link rel="stylesheet" href="main2.css">
        <!--Fontawesom-->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!--Animated CSS-->
        <link rel="stylesheet" type="text/css" href="css/animate.min.css">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--Bootstrap Carousel-->
        <link type="text/css" rel="stylesheet" href="css/carousel.css" />
        <link rel="stylesheet" href="css/isotope/style.css">
        <!--Main Stylesheet-->
        <link href="css/style.css" rel="stylesheet">
        <!--Responsive Framework-->
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
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
        
    
		<div id="main">
	<form action="DramaList" method="post">
	<c:forEach var="dList" items="${DramaList }">
            <h1>연극 리스트</h1>

	<div class="col-md-6">
   		<div class="profile-circle">
        	<img src="/drama/File/${dList.files }" alt="영화포스터" width="100px" height="160px" onclick="location.href='DramaView?dcode=${dList.dcode}'" >
   		</div>
     	<div class="testimonial_content">
        	<i class="fa fa-quote-left"></i>
          	<p><span>연극코드</span>  ${dList.dcode } </p>
          	<p>시청등급  ${dList.age }세 이상 관람가</p>
          	<p>러닝타임  ${dList.runtime }분</p>
          	<p>조회수  ${dList.hits }</p>
          	<p><span>가격</span>  ${dList.price }원</p>
          	<p>조회수  ${dList.hits }</p>
          	
          	<button type="button" onclick="location.href='DramaView?dcode=${dList.dcode}'">예매</button>
    	</div>
    	
        <div class="testimonial_author">
       		<h5><span>제목</span>  ${dList.dname }</h5>
            <p>감독  ${dList.director }  </p>
       </div>
   </div>
       
	</c:forEach>
</form>
  </div>
  
<%-- <table>
	<tr>
		<td rowspan="4" id="file"><img src="/drama/File/${dList.files }" width="100px" height="160px" onclick="location.href='DramaView?dcode=${dList.dcode}'" ></td>
		<td id="td2"><span>제목</span>  ${dList.dname }</td>
		<td id="td2">러닝타임  ${dList.runtime }분</td>
	</tr>
	
	<tr>
		<td>감독  ${dList.director }</td>
		<td>시청등급  ${dList.age }세 이상 관람가 </td>
	</tr>
	
	<tr>
		<td><span>연극코드</span>  ${dList.dcode } </td>
		<td>조회수  ${dList.hits }</td>
	</tr>
	<tr>
		<td id="td1"><span>가격</span>  ${dList.price }원</td>
		<td id="td1">장르  ${dList.genre }</td>
		<td><button type="button" onclick="location.href='DramaView?dcode=${dList.dcode}'">예매</button></td>
	</tr>
	

</table> --%>

</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="js/jquery.counterup.min.js"></script>

        <script>
            //for counter up
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        </script>

        <!--Isotope-->
        <script src="js/isotope/min/scripts-min.js"></script>
        <script src="js/isotope/cells-by-row.js"></script>
        <script src="js/isotope/isotope.pkgd.min.js"></script>
        <script src="js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="js/jquery.localScroll.min.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="js/wow.min.js"></script>
        <!--WOW Activated-->
        <script>
            new WOW().init();
        </script>


        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="js/main.js"></script>
<script>

function Main() {
	location.href = "Main.jsp";
}
function List() {
	location.href = "DramaList";
}
function LoginCheck2(){

	if(${sessionScope.idCheck == null}){
		alert("로그인후 이용해 주세요.");
	} else{
		location.href = "Modify";
	}
}
function LoginCheck3(){
	if(${sessionScope.idCheck == null}){
		alert("로그인후 이용해 주세요.");
	} else{
		location.href = "TicketList";
	}
}
function LoginCheck4(){
	if(${sessionScope.idCheck == null}){
		alert("로그인후 이용해 주세요.");
	} else{
		location.href = "Modify";
	}
}
</script>
</html>