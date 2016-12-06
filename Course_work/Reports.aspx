<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Course_work.course_work" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <h2>Reports.</h2>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="742px" AllowPaging="True" HorizontalAlign="Left" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProblemId" HeaderText="ProblemId" SortExpression="ProblemId" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="SenderId" HeaderText="SenderId" SortExpression="SenderId" />
            <asp:BoundField DataField="RecipientId" HeaderText="RecipientId" SortExpression="RecipientId" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle HorizontalAlign="Center" BackColor="#999999" />
        <EmptyDataRowStyle BackColor="White" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="#003366" HorizontalAlign="Center" Font-Bold="True" />
        <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="39px" Width="255px" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProblemId" HeaderText="ProblemId" SortExpression="ProblemId" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="SenderId" HeaderText="SenderId" SortExpression="SenderId" />
            <asp:BoundField DataField="RecipientId" HeaderText="RecipientId" SortExpression="RecipientId" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="#006699" HorizontalAlign="Center" Font-Bold="True" />
        <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
     <p><a href="Tree.aspx" class="btn btn-primary btn-lg" style="margin: 25px 25px 25px 130px; background-position: center;">Analysis PAGE &raquo;</a></p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IS43_20_KursovaConnectionString1 %>" DeleteCommand="DELETE FROM [Reports] WHERE [Id] = @original_Id AND (([ProblemId] = @original_ProblemId) OR ([ProblemId] IS NULL AND @original_ProblemId IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([SenderId] = @original_SenderId) OR ([SenderId] IS NULL AND @original_SenderId IS NULL)) AND (([RecipientId] = @original_RecipientId) OR ([RecipientId] IS NULL AND @original_RecipientId IS NULL))" InsertCommand="INSERT INTO [Reports] ([Id], [ProblemId], [Message], [Date], [SenderId], [RecipientId]) VALUES (@Id, @ProblemId, @Message, @Date, @SenderId, @RecipientId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Reports]" UpdateCommand="UPDATE [Reports] SET [ProblemId] = @ProblemId, [Message] = @Message, [Date] = @Date, [SenderId] = @SenderId, [RecipientId] = @RecipientId WHERE [Id] = @original_Id AND (([ProblemId] = @original_ProblemId) OR ([ProblemId] IS NULL AND @original_ProblemId IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([SenderId] = @original_SenderId) OR ([SenderId] IS NULL AND @original_SenderId IS NULL)) AND (([RecipientId] = @original_RecipientId) OR ([RecipientId] IS NULL AND @original_RecipientId IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ProblemId" Type="Int32" />
            <asp:Parameter Name="original_Message" Type="String" />
            <asp:Parameter Name="original_Date" Type="DateTime" />
            <asp:Parameter Name="original_SenderId" Type="Int32" />
            <asp:Parameter Name="original_RecipientId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="ProblemId" Type="Int32" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SenderId" Type="Int32" />
            <asp:Parameter Name="RecipientId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProblemId" Type="Int32" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SenderId" Type="Int32" />
            <asp:Parameter Name="RecipientId" Type="Int32" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ProblemId" Type="Int32" />
            <asp:Parameter Name="original_Message" Type="String" />
            <asp:Parameter Name="original_Date" Type="DateTime" />
            <asp:Parameter Name="original_SenderId" Type="Int32" />
            <asp:Parameter Name="original_RecipientId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
