<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.io.File"%>
<%@page import="com.board.bean.BbsBean"%>
<%@page import="com.board.dao.BoardDAO" %> 
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="vo.*" %>    
<%@ page import="java.sql.*" %>    
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%	request.setCharacterEncoding("UTF-8");
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Style -->
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<title>이벤트 메인 페이지</title>

</head>
<body>
	
	<!-- 왼쪽 메뉴창 -->
	<header id="header">
		<div class="leftMenu">올리브영</div>	
	</header>
			
		<!-- 와이드 메뉴 -->
	<div id="container">
		<div class="wideContent">
			<div class="upMenu" id="up">
				<h2 class="topTitle">이벤트</h2>
				<ul>
					<li id="on"><a href="main.do">이벤트</a>
					<li><a href="eventNotice.jsp">당첨자 발표</a></li>


					<li><a href="list.do">이벤트 리뷰</a></li>
				</ul>
			</div>
		</div>
		
		<div class="contents">
			<h2 class="conTitle">이벤트</h2>
			<div class="conSub">
				<ul>
					<li class="on1"><a href="#">진행 중인 이벤트</a></li>
					<li><a href="#">당첨자 발표</a></li>
					<li><a href="#">종료된 이벤트</a></li>
				</ul>
			</div>


			<!-- 이벤트 사진 리스트 -->
			<div class="eventList">
				<ul class="eventBox">
					<li class="one"><a href="#" class="brandwrap">
							<div class="eventThumb">
								<span class="evtThumb"> <img src="img/eventTh_1.jpg"
									alt="" />
								</span>
							</div> <!-- 마우스 오버하면 나오는 창 -->
							<div class="eventInfo">
								<p class="evt_cate">
									<span>공통</span>
								</p>
								<p class="evt_tit">첫 만남을 기억하는 선물0</p>
								<p class="evt_date">2020.06.01 ~ 2020.07.01</p>
							</div>
					</a></li>

					<li class="one"><a href="#" class="brandwrap">
							<div class="eventThumb">
								<span class="evtThumb"> <img src="img/eventTh_2.jpg"
									alt="" />
								</span>
							</div> <!-- 마우스 오버하면 나오는 창 -->
							<div class="eventInfo">
								<p class="evt_cate">
									<span>공통</span>
								</p>
								<p class="evt_tit">첫 만남을 기억하는 선물1</p>
								<p class="evt_date">2020.06.01 ~ 2020.07.01</p>
							</div>
					</a></li>
					<li class="two"><a href="#" class="brandwrap2">
							<div class="eventThumb">
								<span class="evtThumb"> <img src="img/eventTh_3.jpg"
									alt="" />
								</span>
							</div> <!-- 마우스 오버하면 나오는 창 -->
							<div class="eventInfo2">
								<p class="evt_cate">
									<span>공통</span>
								</p>
								<p class="evt_tit">첫 만남을 기억하는 선물2</p>
								<p class="evt_date">2020.06.01 ~ 2020.07.01</p>
							</div>
					</a></li>

					<li class="two"><a href="#" class="brandwrap2">
							<div class="eventThumb">
								<span class="evtThumb"> <img src="img/eventTh_4.jpg"
									alt="" />
								</span>
							</div> <!-- 마우스 오버하면 나오는 창 -->
							<div class="eventInfo2">
								<p class="evt_cate">
									<span>공통</span>
								</p>
								<p class="evt_tit">첫 만남을 기억하는 선물3</p>
								<p class="evt_date">2020.06.01 ~ 2020.07.01</p>
							</div>
					</a></li>

				</ul>

				<!-- 페이징 아이콘 -->
				<div class="paging">
					<span class="first"> <a href="#"> <img
							src="img/chevrons-left.svg" />
					</a>
					</span> <span class="prev"> <a href="#"> <img
							src="img/chevron-left.svg" />
					</a>
					</span> <span class="current"> 1 </span> <a href="#">2</a> <span
						class="next"> <a href="#"> <img
							src="img/chevron-right.svg" />
					</a>
					</span> <span class="last"> <a href="#"> <img
							src="img/chevrons-right.svg" />
					</a>
					</span>

				</div>
				</div>

				<!-- 이벤트 후기 -->
				<div class="eventView">
					<div class="subTitle">
						<h3 class="subT">이벤트 당첨자 후기</h3>
						<a href="list.do"><button class="btn_View">전체보기 +</button></a>
					</div>
								<ul class="eventView_box" id="eventViewList">
								<c:forEach var="main" items="${articleMain}">
								<li>
									<a href="detail.do?seq=${main.seq}"> 
									<div class="reviewInfo">
									<p class="opt_tit">${main.title}</p>
									<p class="opt_info">
										<span class="opt_user">${main.writer}</span>
										<span class="opt_date">${main.fdate}</span>
									</p>
									<p class="opt_txt">${main.content}</p>
									</div>
									<div class="reviewThumb">
										<span class="opt_thumb">
											<c:if test="${main.file!=null}">
											<!-- head는 사진 제목 뽑기. -->
											<c:set var="head" value="${fn:substring(main.file, 0, fn:length(main.file)-4)}"></c:set>
												<!-- pattern은 이미지 형식 뽑기. -->
												<c:set var="pattern" value="${fn:substring(main.file, fn:length(head) +1, fn:length(main.file))}"></c:set>
				
											<c:choose>
											<c:when test="${pattern == 'jpg' || pattern == 'gif'}">
												<img src="UploadFolder/${head}.${pattern}" />
											</c:when>
											<c:otherwise>
												<c:out value="NO IMAGE"></c:out>
											</c:otherwise>
											</c:choose>
				
												</c:if>
										</span>
									</div>	
									</a>
								</li>
								</c:forEach>
								</ul>
							
						</div>
					</div>
				
				
				
				</div>





	<footer id="footer">
			 <div class="footerT">
				<div class="foot_menu">
					<ul>
					 <li class="m1">
						<a href="#" target="blank">
						회사소개</a>	
					 </li>		
					 
					 <li class="m2">
						<a href="#" target="blank">
						이용약관</a>	
					</li>		
					
					 <li class="m3">
						<a href="#" target="blank">
						개인정보 처리방침</a>	
					</li>		
					 
					 <li class="m3">
						<a href="#" target="blank">
						이메일 주소 무단수집 거부</a>	
					</li>		
					
					 <li class="m4">
						<a href="#" target="blank">
						고객만족센터</a>	
					</li>		
				</ul>
			<div class="sitemap">
				<button class="tit">
					<span>Site map</span>
				</button>
			</div>
			
			<div class="familysite">
				<button class="tit">
					<span>Family Site</span>
				</button>
			</div>
			
			<div class="korean">
				<button class="tit">
					<span>Korean</span>
				</button>
			</div>
			
			
		</div>
						
			</div>
			
			
	<div class="footerM">
		<div class="footInfo">
			<div class="address">
				<p>
				 <span>서울특별시 강남구 역삼동 769-8 엠스페이스빌딩, 
				 	도로명 주소 ( 서울특별시 강남구 논현로72길 13 M-SPACE 빌딩 해브앤비 )
				 </span>
				 <span>
				  대표이사 : 크리스토퍼 킨더슬리 우드
				 </span>
				 </p>
				
				<p>
				 <span>상호명 : 해브앤비(주)</span>
				 <span>사업자 등록번호 : 214-87-63681</span>
				 <span>통신판매업 신고번호 : 2008 서울 강남-2284호
				 <a href="#" target="_blank" class="btn btnType3 btnSizeXS busnessinfo">
				 	<span class="arr-right">
				 	사업자 정보 확인
				 	</span>
				 </a>
				 </span>	
				</p>
				 
				 
				 <p>
				 	<span>개인정보관리책임자 : 엄정식 팀장</span>
				 	<span>고객만족센터 : 1544-5453 ( 운영시간 : 09:00~18:00, 점심시간 : 11:50~12:50 )</span>
				 	<span>FAX : 02-3462-9051</span>
				 </p>
				 
				 <p>
				 <span>전자우편주소 : 
				 <a href="mailto:webmaster@drjart.com" class="mail">webmaster@drjart.com</a></span> 
				 </p>
				</div>
				
				<small class="copyright">Copyrightⓒ Have&amp;Be co., Ltd. All rights reserved.</small>
			</div>
			
			<!-- sns -->
			<div class="foot_sns">
				<a href="https://www.instagram.com/drjart_kr/" class="sns1" target="_blank">
				<img src="img/instagram.svg" alt="" /></a>
				
				<a href="https://ko-kr.facebook.com/DrJartPage/" class="sns2" target="_blank">
				<img src="img/facebook.svg" alt="" /></a>
			
				
				<a href="https://twitter.com/drjartkr/" class="sns3" target="_blank">
				<img src="img/twitter.svg" alt="" /></a>
				
			</div>
			
		</div>
		
		<div class="footerB">
			<div class="footMaker">
			 <ul>
			 	<li><img src="#" alt="" />
			 	<span>
			 	iso9001,14001<br/>
			 	환경경영인증 획득</span>
			 	</li>
			 	
			 	<li><img src="#" alt="" />
			 	<span>
			 	기업 부설<br/>
			 	디자인 연구소 인정
			 	</span>
			 	</li>
			 	
			 	<li><a href="#"><img src="#" alt="" />
			 	<span>
			 	에스크로 서비스<br/>
			 	환경경영인증 획득
			 	</span>
			 	</a>
			 	</li>
			 	
			 </ul>
			</div>
		</div>
					</footer>
	
	
	
	
	
	
		
		
		
		
		<!-- 진행 중인 이벤트 사진 -->
		
		
		
		<!-- 이벤트 당첨자 후기 리스트 -->
		
		
	
	
	
</body>
</html>