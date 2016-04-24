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
    <script src="http://code.angularjs.org/1.2.6/angular.js"></script>
    <script src="js/form-app.js"></script>
    <!-- then add controllers -->
    <script src="form-data-controller.js"></script>
    <script src="controller2.js"></script>
</head>

<s:form theme="xhtml" cssClass="form-login" action="contactData" method="POST">
    <s:textfield key="userName" cssClass="form-control required"/>
</s:form>

<s:text name="test"/>
<s:property value="getText('test')"/>

<body ng-app="userContactApp" ng-controller="mainController">
<section id="user-contact">
    <div class="container">
        <div class="row">
            <h1>Kontaktandmed</h1>
            <form name="userContactForm" ng-submit="submitForm()" novalidate>
                <div class="form-group"
                     ng-class="{ 'has-error' : userContactForm.name.$invalid && !userContactForm.name.$pristine }">
                    <p ng-show="userContactForm.name.$invalid && !userContactForm.name.$pristine" class="help-block">
                        Teie nimi on nõutav.</p>
                    <label>Ees- ja perenimi</label>
                    <input type="text" name="name" class="form-control" ng-model="user.name" required>
                </div>
                <div class="form-group"
                     ng-class="{ 'has-error' : (userContactForm.email.$invalid && !userContactForm.email.$pristine) &&
                      ((userContactForm.email.$invalid && !userContactForm.email.$pristine)||
                     userContactForm.email.$pristine)}">
                    <label>Telefon</label>
                    <input type="text" name="telephone" class="form-control"
                           ng-model="ContactDataForm.telephone" required>
                    <p ng-show="(userContactForm.telephone.$invalid && !userContactForm.telephone.$pristine)&&
                    ((userContactForm.email.$invalid && !userContactForm.email.$pristine)|| userContactForm.email.$pristine)"
                       class="help-block">
                        Sisesta kehtiv telefon.</p>
                </div>
                <div class="form-group"
                     ng-class="{ 'has-error' : (userContactForm.telephone.$invalid && !userContactForm.telephone.$pristine) &&
                      ((userContactForm.email.$invalid && !userContactForm.email.$pristine) ||
                      (userContactForm.telephone.$pristine)))}">
                    <label>E-post</label>
                    <input type="email" name="email" class="form-control" ng-model="user.email" required>
                    <p ng-show="(userContactForm.email.$invalid && !userContactForm.email.$pristine)&&
                    ((userContactForm.email.$invalid && !userContactForm.email.$pristine) || (userContactForm.telephone.$pristine))"
                       class="help-block">
                        Sisesta kehtiv email.</p>
                </div>
                <div class="form-group"
                     ng-class="{ 'has-error' : userContactForm.address.$invalid && !userContactForm.address.$pristine }">
                    <label>Tänav, maja, korter</label>
                    <input type="text" name="address" class="form-control" ng-model="ContactDataForm.address" required>
                    <p ng-show="userContactForm.address.$invalid && !userContactForm.address.$pristine"
                       class="help-block">
                        Teie tänav, maja ja korter on nõutav.</p>
                </div>
                <div class="form-group">
                    <label>Küla/alevik</label>
                    <input type="text" name="village" class="form-control" ng-model="userContactForm.village">
                </div>
                <div class="form-group">
                    <label>Linn/maakond</label>
                    <select name="city" ng-model="userContactForm.city" class="form-control" required>
                        <option value="option-1">Tallinn</option>
                        <option value="option-2">Tartu</option>
                    </select>
                </div>

                <div class="form-group">
                    <input type="radio" ng-model="userContactForm.whichDelivery.sameDelivery">
                    <label>Kohaletoimetamine samaleaadressile</label>
                    <input type="radio" ng-model="userContactForm.whichDelivery.">
                    <label>Kohaletoimetamine erinevale aadressile</label>
                </div>
                <div ng-show="userContactForm.whichDelivery.difDelivery">
                    <div class="form-group">
                        <label>Tänav, maja, korter </label>
                        <input type="text"
                               name="deliveryAddress"
                               ng-model="userContactForm" class="form-control" value="deliveryAddress">
                    </div>
                    <div class="form-group">
                        <label>Küla/alevik </label>
                        <input type="text" name="deliveryVillage"
                               ng-model="userContactForm" class="form-control" value="deliveryVillage">
                    </div>
                    <div class="form-group">
                        <label>Linn/maakond </label>
                        <input type="text" name="deliveryCity" class="form-control"
                               ng-model="userContactForm.deliveryCity">
                    </div>
                </div>

                <div><input type="checkbox" ng-model="userContactForm.agreement" value="weeklyNews">
                    <label>Olen tingimustega tutvunud</label></div>

                <button type="submit" class="btn btn-primary" ng-disabled="userContactFormuserContactForm.$invalid">
                    Submit
                </button>
            </form>
        </div>
    </div>
</section>
</body>
</html>
