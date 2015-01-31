<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Customer Support</title>
	</head>
	<body>
		<a href="<c:url value="/login?logout" />">Logout</a>
		<h2>Create a Ticket</h2>
		<form method="post" action="tickets" enctype="multipart/form-data">
			<input type="hidden" name="action" value="create" />
			Subject <br/>
			<input type="text" name="subject"><br/><br/>
			<textarea rows="5" cols="30" name="body"></textarea><br/><br/>
			<b>Attachments</b><br/>
			<input type="file" name="file1" /><br/><br/>
			<input type="submit" value="Submit" />
		</form>
	</body>
</html>