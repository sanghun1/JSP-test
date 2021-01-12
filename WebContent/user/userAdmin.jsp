<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>
<div class="container">

<form action="/test/user?cmd=userAdmin" method="post" >
	<c:forEach var="user" items="${users}">
		고유번호
		<div class="form-group">
			<input type="text" name="id" class="form-control" value="${user.id}"  readonly/>
		</div>
		아이디
		<div class="form-group">
			<input type="text" name="username" class="form-control" value="${user.username}"  readonly/>
		</div>
		이메일
		<div class="form-group">
			<input type="text" name="email" class="form-control" value="${user.email}"  readonly/>
		</div>

		<br/>
		<c:if test="${user.id != 1}">
			<button onClick="#" class="btn btn-danger">삭제</button>
		</c:if>
	</c:forEach>
</form>

</div>

</body>
</html>