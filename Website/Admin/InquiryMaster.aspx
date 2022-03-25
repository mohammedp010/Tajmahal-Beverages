<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="InquiryMaster.aspx.cs" Inherits="Admin_InquiryMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="card-header">Inquiry Entries</h3><br />
    <div class="table-responsive table-responsive-data2">
    <div class="p_id">
    <asp:GridView ID="gvInquiry" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactId" DataSourceID="dsInquiry" CssClass="table table-data2">
        <Columns>
            <%--<asp:BoundField DataField="ContactId" HeaderText="ContactId" InsertVisible="False" ReadOnly="True" SortExpression="ContactId" />--%>
            <asp:BoundField DataField="ContactId" HeaderText="ContactId" SortExpression="ContactId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="PersonName" HeaderText="PersonName" SortExpression="PersonName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <%--<asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />--%>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" ImageUrl="~/Images/delete.png" Width="25px" Height="25px" />
                    
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
    </asp:GridView>
        </div>
        </div>
    <asp:SqlDataSource ID="dsInquiry" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="ContactDelete" DeleteCommandType="StoredProcedure" SelectCommand="ContactGet" SelectCommandType="StoredProcedure" InsertCommand="ContactInsert" InsertCommandType="StoredProcedure" UpdateCommand="ContactUpdate" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="ContactId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PersonName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="ContactId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ContactId" Type="Int32" />
            <asp:Parameter Name="PersonName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

