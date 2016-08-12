<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="false" %>
<script>
window.onload = function() {
  document.getElementById("guess").focus();
};
</script>
<form action="${flowExecutionUrl}&_eventId=guessNumber" method="post">

  <input type="hidden" name="_flowExecutionKey" value=""/>
  <br/>
  Enter guess

  <br/>
  <table>
    <tr>
      <td>Guess</td>
      <td><input id='guess' min='1' max='99' type="number" name="guessedNumber"/></td>
    </tr>
  </table>

  <br/>
  <input type="submit" value="Guess" />

</form>
