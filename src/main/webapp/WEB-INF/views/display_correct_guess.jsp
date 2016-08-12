<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <body>
    Your guess is correct!!!!!!!!!!!!!!
    <c:url value='/guessFlow' var='guessURL'/>
    <p><a href='${guessURL}'>New Game</a>
  </body>
</html>
