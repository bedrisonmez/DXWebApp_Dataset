<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DXWebApp_Dataset.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        deneme<br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="267px" OnClick="Button1_Click" />
    <br />

    </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" EnableTheming="True" KeyFieldName="CustomerID" Theme="Mulberry">
                <SettingsEditing Mode="PopupEditForm">
                </SettingsEditing>
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Region" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Phone" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Fax" VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DXWebApp_Dataset.App_Data.DataSet1TableAdapters.Customers1TableAdapter"></asp:ObjectDataSource>

        </div>

    </form>
</body>
</html>
