<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>
<div class="container">
	<form action="/test/user?cmd=userInfo" method="post" >
		고유번호
		<div class="form-group">
			<input type="text" name="text" id="password" class="form-control" value="${sessionScope.principal.id}"  readonly/>
		</div>
		아이디
		<div class="form-group">
			<input type="text" name="username" id="username"  class="form-control" value="${sessionScope.principal.username}"  readonly/>
		</div>
		이메일
		<div class="form-group">
			<input type="text" name="email"id="username"  class="form-control" value="${sessionScope.principal.email}"  readonly/>
		</div>

		<br/>
			<button onClick="deleteById(${sessionScope.principal.id})" class="btn btn-danger">삭제</button>
	</form>
</div>
<script>
		function deleteById(id){
			// 요청과 응답	을 json
			var data = {
				id: id
			}
			$.ajax({
				type: "post",
				url: "/test/user?cmd=delete",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(result){
				console.log(result);
				if(result.status == "ok"){
					window.location="/test/user?cmd=logout";
				}else{
					alert("삭제에 실패하였습니다.");
				}
			});
		}
	</script>
</body>
</html>