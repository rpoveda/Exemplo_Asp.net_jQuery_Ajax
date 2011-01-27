<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            background-color: #666666;
        }
        #login
        {
            /*border:1px solid red;*/
            width: 280px;
            margin: 100px auto;
            background-color: #FFF;
            padding: 10px 10px;
            -webkit-box-shadow: 0 1px 5px #000;
            -moz-box-shadow: 0 1px 5px #000;
            box-shadow: 0 1px 5px #000;
        }
        #txtNome, #txtSenha
        {
            display: table;
            padding: 5px 10px;
            width: 250px;
        }
        #resposta
        {
            color: #3366FF;
            font-family: Verdana;
            font-weight: bold;
            text-shadow: 0 1px 2px #000;
            position: absolute;
            margin-top: -80px;
            margin-left: 500px;
        }
        #aviso
        {
            background-color: #FFFFCC;
            padding: 10px 10px;
            width: 130px;
            -webkit-box-shadow: 0 1px 3px #000;
            -webkit-border-radius: 3px;
            position: absolute;
            margin-top: -280px;
            margin-left: 550px;
            display: none;
        }
        #aviso label
        {
            display: table;
            font-family: Verdana;
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#aviso").fadeIn("slow");

            $("#btnLogin").click(function () {
                var login = $("#txtNome").val();
                var senha = $("#txtSenha").val();


                $.ajax({
                    type: "POST",
                    url: "Default.aspx/Login",
                    data: "{login: '" + login + "', senha: '" + senha + "'}",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        $("#resposta").text(data.d);
                    },
                    error: function (data) {
                        $("#resposta").text(data.d);
                    }
                });
                return false;
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login">
        <asp:TextBox runat="server" ID="txtNome" placeholder="Login..." ClientIDMode="Static" />
        <asp:TextBox runat="server" ID="txtSenha" placeholder="Password..." ClientIDMode="Static" />
        <asp:Button runat="server" ID="btnLogin" Text="Login" ClientIDMode="Static" />
    </div>
    <span id="resposta"></span>
    </form>
    <div id="aviso">
        <label>
            Login: "admin"</label>
        <label>
            Senha: "admin"</label>
    </div>
</body>
</html>
