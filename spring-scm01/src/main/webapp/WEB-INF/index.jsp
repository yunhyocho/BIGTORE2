<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Spring MVC 게시판</title>
<!--
	BoardController에서 클래스 레벨에 @RequestMapping 애노테이션을 사용해
	별도로 경로 매핑을 하지 않고 boardList(Model model) 메서드에만
	@RequestMapping({"/boardList", "/list"}) 애노테이션으로 요청 매핑을 설정했다.
	그리고 WEB-INF/spring/appServlet/servlet-context.xml에서 정적 리소스와
	관련된 url 맵핑을 아래와 같이 설정했기 때문에
	<mvc:resources mapping="/resources/**" location="/resources/" />		
	css의 위치를 "resources/css/index.css"와 같이 지정해야 한다.
 
	브라우저 주소 표시줄에 http://localhost:8080/springstudy-bbs01/list
	또는 http://localhost:8080/springstudy-bbs01/boardList 등으로
	표시되므로 css 디렉터리는 ContextRoot/resources/css에 위치하기 때문에 현재
	위치를 기준으로 상대 참조 방식으로 "resources/css/index.css"를 지정해야 한다.
-->
<link rel="stylesheet" type="text/css" href="resources/css/index.css" />
<link rel="stylesheet" type="text/css" href="resources/css/board.css" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/formcheck.js"></script>
</head>
<body>
	<%@ include file="template/header.jsp" %>
	<jsp:include page="${ param.body }" />
	<%@ include file="template/footer.jsp" %>
</body>
</html>