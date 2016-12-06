<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Course_work.course_work" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>jstree basic demos</title>
    <style>
        body {
            max-width: 800px;
            min-width: 300px;
            margin: 0 auto;
            font-size: 14px;
            font-size: 1.4em;
          
        }
        h1 {
            font-size: 2.5em;
        }
        .demo {
            overflow: auto;
            border: 1px solid silver;
            min-height: 100px;
            background-color:white;
        }
    </style>
    <link rel="stylesheet" href="dist/themes/default/style.min.css" />
</head>
<body>
    
    <h1>Analysis Page.</h1>
    <h2>Problems hierarchical tree</h2>
    <div id="data" class="demo"></div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="dist/jstree.min.js"></script>
    <script>
        // inline data demo
        $('#data').jstree({
            'core': {
                'data': [

                    {"text": "Low system performance", "children": [
                              { "text": "Black Screen appearance" },
                              { "text": "Lags on HD mode" }]},

                    {"text": "Compiler errors", "children":  [
                              { "text": "StackOverflow" }]},

                    { "text": "HelpBox need to add" },

                    { "text": "System Architecture errors", "children": [
                                { "text": "Toolbar strip disappearance" },
                                { "text": "TurboBoors doesn't work correctly" },
                                { "text": "Mode 2 works incorrectly" },
                                { "text": "Database problems", "children": [{ "text": "Registration error" }]}]
                    }
                ]
            }
        });
    </script>
    <img style="width:800px" src="TREE.png"/>
</body>
</html>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IS43_20_KursovaConnectionString1 %>" SelectCommand="SELECT * FROM [People]"></asp:SqlDataSource>
</asp:Content>
