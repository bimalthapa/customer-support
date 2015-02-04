<%--@elvariable id="loginFailed" type="java.lang.Boolean" --%>
<!DOCTYPE>
<html>
<head>
	<title>Customer Support</title>
</head>
<body>
	<h2>Login</h2>
	You must log in to access the customer support site. <br/><br/>
	<c:if test="${loginFailed}">
		<b>The username or password you entered are not correct. Please try again.</b><br /><br />
	</c:if>
	<form method="post" action="<c:url value="/login" />">
		Username<br/>
		<input type="text" name="username" /><br/><br/>
		Password<br/>
		<input type="password" name="password" /><br/><br/>
		<input type="submit" value="Log In" />
	</form>
</body>
</html>