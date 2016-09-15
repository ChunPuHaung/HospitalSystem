<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--jquery-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script>
        function myFunction() {
            $(document).ready(function () {
                $("#div3").fadeIn(3000);
            });
        }
        $(document).ready(function () {
            $('#autoclickme a').click();
        });
        function ClickAll() {
            //綜合
            document.getElementById("Button1").click();
        }
    </script>
    <style type="text/css">
        body {
            padding-top: 100px;
            background-color: #353535;
        }

        .block-unit {
            margin-bottom: 30px;
            padding-bottom: 10px;
            border: 1px solid #6a6868;
            background: rgba(0, 0, 0, 0.4);
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

        h4 {
            color: #ffffff;
        }

        h5 {
            color: #0863d1;
        }

        span {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar-nav navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Hospital Management System</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">首頁</a></li>
                        <li><a href="#">掛號管理</a></li>
                        <li><a href="#">停/代診管理</a></li>
                        <li><a href="#">藥品管理</a></li>
                        <li><a href="#">醫生管理</a></li>
                        <li><a href="#">醫院管理</a></li>
                        <li><a href="#">部門管理</a></li>
                        <li><a href="#">病人管理</a></li>
                        <li><a href="#">門診表管理</a></li>
                        <li><a href="#">用藥紀錄管理</a></li>
                        <li><a href="#">帳號</a></li>
                        <li><a href="#">設定</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="autoclickme">
            <a onclick="myFunction()"></a>

            <div class="container">

                <div class="row">

                    <div id="div3" style="text-align: center; padding: 8px 8px 8px 8px; display: none;">

                        <div class="col-lg-offset-4 col-lg-4" style="margin-top: 100px">

                            <div class="block-unit" style="text-align: center; padding: 8px 8px 8px 8px;">
                                <h4>請登入</h4>
                                <hr />
                                <img src="../assets/img/Healthcare.png" />
                                <br />
                                <h4>Hospital Management System</h4>
                                <p>
                                    <span>帳號：</span><asp:TextBox ID="txtAccount" runat="server" BackColor="#ffff99"></asp:TextBox><br />
                                    <span>密碼：</span><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#ffff99"></asp:TextBox>
                                </p>
                                <h5>忘記您的帳號或密碼？</h5>
                                <h5><asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label></h5>
                                <asp:ImageButton ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Style="display: none" />
                                <button type="button" class="btn btn-primary" onclick='javascript:ClickAll();'>登入</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>