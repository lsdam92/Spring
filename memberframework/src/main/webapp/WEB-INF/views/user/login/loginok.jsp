<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<c:if test="${userInfo != null}">
	<script>
		function deletemember() {
			if (confirm("정말 탈퇴?")) {
				$(location).attr("href", "${root}/user/delete.kitri");
			}
		}
	</script>
	<strong>${userInfo.name}(${userInfo.id})님 안녕하세요.</strong>
	<a href="${root}/user/logout.kitri">로그아웃</a>
	<a href="${root}/user/modify.kitri">정보수정</a>
	<a href="#" onclick="javascript:deletemember();">회원탈퇴</a>
	<c:if test="${'damdam' == userInfo.id}">
		<a href="${root}/admin/mvmemberlist.kitri">관리자</a>
	</c:if>
</c:if>
<c:if test="${userInfo == null }">
	<c:redirect url="/user/login.kitri" />
</c:if>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>