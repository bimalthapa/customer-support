<%--@elvariable id="ticketDatabase" type="java.util.Map<Integer, com.beezzybee.Ticket>" --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.beezzybee.Ticket, com.beezzybee.Attachment, java.util.Map" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer Support</title>
    </head>
    <body>
    	<a href="<c:url value="/login?logout" />">Logout</a>
        <h2>Tickets</h2>
        <a href="<c:url value="/tickets">
            <c:param name="action" value="create" />
        </c:url>">Create Ticket</a><br /><br />
        <c:choose>
        	<c:when test="${fn:length(ticketDatabase) == 0}">
        		<i>There are no tickets in the system.</i>
        	</c:when>
        	<c:otherwise>
        		<c:forEach items="${ticketDatabase}" var="entry">
        			Ticket ${entry.key}: <a href="<c:url value="/tickets">
                        <c:param name="action" value="view" />
                        <c:param name="ticketId" value="${entry.key}" />
                    	</c:url>"><c:out value="${entry.value.subject}" /></a> (customer:
        				<c:out value="${entry.value.customerName}" />)<br />
        		</c:forEach>
        	</c:otherwise>
        </c:choose>
    </body>
</html>
