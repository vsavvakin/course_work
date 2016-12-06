<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Course_work.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>If you have some questions - contact with me.</h3>
    <address>
       <br />
        <abbr title="Phone">P:</abbr>
        (095)-736-10-72
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:v.savvakin@gmail.com">v.savvakin@gmail.com</a><br />
        <strong>Other:</strong> <a href="skype:vovan-mtk?call">Skype: vovan-mtk</a>
    </address>
</asp:Content>
