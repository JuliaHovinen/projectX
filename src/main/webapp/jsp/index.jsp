
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head lang="en">
    <title>IceFire</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
    <script src="scripts/form-check.js"></script>
</head>

<s:form theme="xhtml" cssClass="form-login" action="contactData" method="POST">
    <s:textfield key="userName" cssClass="form-control required"/>
</s:form>

<s:text name="test"/>
<s:property value="getText('test')" />


<body ng-app="myapp">

<div ng-controller="MyController" >



    <h1>Kontaktandmed</h1>
    <form>
        <div>Ees- ja perenimi <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Telefon <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>E-post <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Tänav, maja, korter <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Küla/alevik <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Linn/maakond <input type="text" name="firstName" ng-model="myForm.name"></div>

        <div><input type="radio" ng-model="myForm.whichNewsletter" value="weeklyNews">Kohaletoimetamine samaleaadressile</div>
        <div><input type="radio" ng-model="myForm.whichNewsletter" value="monthlyNews">Kohaletoimetamine erinevale aadressile</div>

        <div>Tänav, maja, korter <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Küla/alevik <input type="text" name="firstName" ng-model="myForm.name"></div>
        <div>Linn/maakond <input type="text" name="firstName" ng-model="myForm.name"></div>

        <div><input type="radio" ng-model="myForm.whichNewsletter" value="weeklyNews">Kohaletoimetamine samaleaadressile</div>

        <div>Salvesta</div>
    </form>

    <div>
        {{myForm.firstName}} {{myForm.lastName}}
    </div>
</div>
<!--TODO Connect js and change form under js-->
</body>
</html>
