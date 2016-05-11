<%--
  Created by IntelliJ IDEA.
  User: Lora
  Date: 5/8/16
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <c:import url="head-tag.jsp" />
</head>
<body>

<c:import url="header.jsp" />

<c:import url="image.jsp" />

<br />

<h1>${book} was added to your bookshelf</h1>

ID ${bookId} <br />
Author: ${author} <br />
ISBN ${isbn} <br />
Recommencation Percentage ${recommencationPercentage} <br />

<a href="warArchive/goto-my-add-book">Add another book</a>

</body>
</html>
