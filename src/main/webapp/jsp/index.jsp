<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head lang="en">
    <title>IceFire</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS -->
    <!-- load bootstrap -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/form-styles.css">
    <!-- JS -->
    <script   src="https://code.jquery.com/jquery-2.2.3.min.js"
              integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo="
              crossorigin="anonymous"></script>
    <script src="js/form-app.js"></script>
</head>

<s:form theme="xhtml" cssClass="form-login" action="contactData" method="POST">
    <s:textfield key="userName" cssClass="form-control required"/>
</s:form>

<s:text name="test"/>
<s:property value="getText('test')"/>

<body>
<section id="user-contact">
    <div class="container">
        <div class="row">
            <h1>Kontaktandmed</h1>
            <form name="userContactForm" novalidate>
                <div class="form-group">
                    <label>Ees- ja perenimi</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Telefon</label>
                    <input type="text" name="telephone" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>E-post</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Tänav, maja, korter</label>
                    <input type="text" name="address" class="form-control"  required>
                </div>
                <div class="form-group">
                    <label>Küla/alevik</label>
                    <input type="text" name="village" class="form-control">
                </div>
                <div class="form-group">
                    <label>Linn/maakond</label>
                    <select name="city" class="form-control" required>
                        <option value="option-1">Tallinn</option>
                        <option value="option-2">Tartu</option>
                    </select>
                </div>

                <div class="form-group">
                    <input type="radio">
                    <label>Kohaletoimetamine samaleaadressile</label>
                    <input type="radio">
                    <label>Kohaletoimetamine erinevale aadressile</label>
                </div>
                <div>
                    <div class="form-group">
                        <label>Tänav, maja, korter </label>
                        <input type="text" name="deliveryAddress" class="form-control" value="deliveryAddress">
                    </div>
                    <div class="form-group">
                        <label>Küla/alevik </label>
                        <input type="text" name="deliveryVillage" class="form-control" value="deliveryVillage">
                    </div>
                    <div class="form-group">
                        <label>Linn/maakond </label>
                        <input type="text" name="deliveryCity" class="form-control">
                    </div>
                </div>
                <div><input type="checkbox" value="weeklyNews">
                    <label>Olen tingimustega tutvunud</label></div>

                <button type="submit" class="btn btn-primary">
                    Submit
                </button>
            </form>
        </div>
    </div>
</section>
</body>
</html>
