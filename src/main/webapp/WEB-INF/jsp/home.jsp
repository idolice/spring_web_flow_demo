<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="param_name" scope="request" class="java.lang.String" />
<html>
  <head>
    <title>Spring Webflow Demo</title>
  </head>
  <body>
    <p>Hello, <c:out value="${param_name}"/>!</p>
    <c:url value='/loginFlow' var='flowURL'/>
    <c:url value='/guessFlow' var='guessURL'/>
    <p><a href='${guessURL}'>Guessing Game demo is here</a>
  </body>
</html>
