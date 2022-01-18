<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<%! 
   String today(){
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
	} 
	%>
	 
	 
	 <c:set var="variavel" value="Testando pagina JSP utilizando JSTL"/> 
	 <c:out value="${variavel} "/>
	 <c:set var="formatar" value="true"/>
	  <c:set var="d1" value="<%=new java.util.Date() %>"/>
	  <h1>a data de hoje é: <c:out value="${d1}"/></h1>
	  <h1>a data de hoje é: <fmt:formatDate pattern = "yyyy-MM-dd hh:mm:ss" value="${d1 }"/></h1>
	  <c:if test="${formatar == true }">
	  <p> variavel formatar = <c:out value="${formatar}"/></p>
 		</c:if>
 		<h1>a data de hoje é: <c:choose>
 								<c:when test="${formatar == true }">
 									<c:out value="<%=today()%>"/>
 									</c:when>
 									<c:otherwise>
 									<c:out value="${d1}"/>
 								</c:otherwise>
 							</c:choose></h1>
 		
 		
 	<h1 class="text-primary"> segunda parte </h1>
 	
 	
			<c:set var="contagem " value= "10"/> 
			<p>contagem de <c:out value="${contagem}"/></p>				
			
			<c:forEach var = "i" begin = "1" end = "15">
         posicao: <c:out value = "${i}"/><p>
      				</c:forEach>
				 
							 <c:choose>
 				<c:when test="${contagem % 2 == 0 }">
 				
 				<p><c:out value="${i}"/> é par</p>
 						</c:when>
 						<c:otherwise>
 						<h3 class="text-success"> é impar <c:out value="${i}"/></h3>
 						</c:otherwise>
 				</c:choose>
				
				
				


</body>
</html>