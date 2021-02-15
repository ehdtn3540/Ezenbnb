<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 테스트 인덱스</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<form action="/ebb/guestaccount.do?" method="post">
		<div class="col-lg-6">
			<div class="input-group">
				<input name="id" type="text" class="form-control" placeholder="user id...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="submit">Go!</button>
				</span>
			</div>
			<!-- /계정으로 감-->
		</div>
		<!-- /.col-lg-6 -->
	</form>
</body>
</html>