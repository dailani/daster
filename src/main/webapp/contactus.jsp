<%--
  Created by IntelliJ IDEA.
  User: Stivi
  Date: 1/16/2022
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KONTAKT</title>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<div class="row">
    <form class="col s12" action="https://formspree.io/dizenjueswebi@outlook.com" method="POST">
        <input type="text" name="_format" value="plain" style="display:none" />
        <input type="hidden" name="_next" value="stivibaci.github.io/index.html"/>
        <div class="row">
            <div class="input-field col s6">
                <input id="first_name" type="text" class="validate" name="name">
                <label for="first_name">Emri juaj</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="_replyto">
                <label for="email">Email</label>
            </div>
        </div>
        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <textarea id="textarea1" class="materialize-textarea" name="message"></textarea>
                        <label for="textarea1">Mesazhi juaj</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <button class="btn waves-effect waves-light" type="submit" value="send" name="action">Dërgo
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </form>
        dizenjueswebi@outlook.com

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>