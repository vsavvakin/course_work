<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Course_work.course_work" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Problems.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CaptionAlign="Left" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" HorizontalAlign="Left">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="ParentId" HeaderText="ParentId" SortExpression="ParentId" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="#003366" HorizontalAlign="Center" Font-Bold="True" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CaptionAlign="Right" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="ParentId" HeaderText="ParentId" SortExpression="ParentId" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#003366" ForeColor="#003366" HorizontalAlign="Center" Font-Bold="True" Font-Italic="False" Wrap="True" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>

         <p><a href="Tree.aspx" class="btn btn-primary btn-lg" style="background-position: center; margin-top: 30px; margin-left: 344px;">Analysis PAGE &raquo;</a></p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IS43_20_KursovaConnectionString1 %>" DeleteCommand="DELETE FROM [Problems] WHERE [Id] = @original_Id AND [Description] = @original_Description AND (([ParentId] = @original_ParentId) OR ([ParentId] IS NULL AND @original_ParentId IS NULL))" InsertCommand="INSERT INTO [Problems] ([Id], [Description], [ParentId]) VALUES (@Id, @Description, @ParentId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Description], [ParentId] FROM [Problems]" UpdateCommand="UPDATE [Problems] SET [Description] = @Description, [ParentId] = @ParentId WHERE [Id] = @original_Id AND [Description] = @original_Description AND (([ParentId] = @original_ParentId) OR ([ParentId] IS NULL AND @original_ParentId IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_ParentId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ParentId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ParentId" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_ParentId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        &nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </asp:Content>