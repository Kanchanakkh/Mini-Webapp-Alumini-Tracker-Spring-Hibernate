<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>

	<title>List Alumini</title>
	<!-- reference our style sheet -->
	
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>
	
	<div id="wrapper">
	
		<div id="header">
			<h2>ARM - Alumini Relationship Manager</h2>
		
		</div>
	
	
	</div>
	
	<div id = "container">
		<div id="content">
			<!--  add our html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name<th>
					<th>Email<th>
					
				
				</tr>
				
				<!--  loop over and print our alumini -->
				<c:forEach var="tempAlumini" items="${alumini}">
					<tr>
					<td> ${tempAlumini.firstName }</td>
					<td> ${tempAlumini.lastName }</td>
					<td> ${tempAlumini.email} </td>
					
					</tr>
				</c:forEach>			
			</table>
		</div>
	
	
	</div>
List Alumini - coming soon ...

</body>
</html>