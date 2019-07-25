<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Brand.aspx.cs" Inherits="project_1.Add_Brand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .newStyle1 {
            font-family: "Comic Sans MS";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('http://localhost:54185/images/pexels-photo-988872.jpeg')">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" CssClass="newStyle1" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="KITCHEN ONLINE"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Home" Width="78px" PostBackUrl="~/Home page.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button2" runat="server" Text="Brand" Width="78px" PostBackUrl="~/Brand List.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" CssClass="newStyle1" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Add Brand"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button3" runat="server" Text="Products" PostBackUrl="~/Product LIst.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Brand Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Brand ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Add" OnClick="Button4_Click" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Brand_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Brand_id" HeaderText="Brand_id" ReadOnly="True" SortExpression="Brand_id" />
                    <asp:BoundField DataField="Brand_Name" HeaderText="Brand_Name" SortExpression="Brand_Name" />
                    <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/images/oui-icons-50-256.png" OnClick="ImageButton1_Click" Text="" />
                        </ItemTemplate>
                        <ControlStyle Height="12px" Width="15px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/delete-icon.png" Text="Delete" />
                        </ItemTemplate>
                        <ControlStyle Height="15px" Width="12px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Add_brand]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Add_brand] WHERE [Brand_id] = @original_Brand_id AND (([Brand_Name] = @original_Brand_Name) OR ([Brand_Name] IS NULL AND @original_Brand_Name IS NULL)) AND (([No_of_products] = @original_No_of_products) OR ([No_of_products] IS NULL AND @original_No_of_products IS NULL))" InsertCommand="INSERT INTO [Add_brand] ([Brand_id], [Brand_Name], [No_of_products]) VALUES (@Brand_id, @Brand_Name, @No_of_products)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Add_brand] SET [Brand_Name] = @Brand_Name, [No_of_products] = @No_of_products WHERE [Brand_id] = @original_Brand_id AND (([Brand_Name] = @original_Brand_Name) OR ([Brand_Name] IS NULL AND @original_Brand_Name IS NULL)) AND (([No_of_products] = @original_No_of_products) OR ([No_of_products] IS NULL AND @original_No_of_products IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Brand_id" Type="Int32" />
                    <asp:Parameter Name="original_Brand_Name" Type="String" />
                    <asp:Parameter Name="original_No_of_products" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Brand_id" Type="Int32" />
                    <asp:Parameter Name="Brand_Name" Type="String" />
                    <asp:Parameter Name="No_of_products" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Brand_Name" Type="String" />
                    <asp:Parameter Name="No_of_products" Type="String" />
                    <asp:Parameter Name="original_Brand_id" Type="Int32" />
                    <asp:Parameter Name="original_Brand_Name" Type="String" />
                    <asp:Parameter Name="original_No_of_products" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
