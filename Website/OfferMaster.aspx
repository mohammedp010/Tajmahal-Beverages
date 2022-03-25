<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OfferMaster.aspx.cs" Inherits="OfferMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script type="text/javascript">

         function ValidateData(val) {
             var FName = document.getElementById("ContentPlaceHolder1_FormView1_OffNameTextBox");
             var Code = document.getElementById("ContentPlaceHolder1_FormView1_OffCodeTextBox");

             var d = document.getElementById("ContentPlaceHolder1_error");
             var d1 = document.getElementById("ContentPlaceHolder1_success");
             var msg = document.getElementById("ContentPlaceHolder1_lblError");

             d.style.display = "none";
             d1.style.display = "none";

             if (FName.value == "") {
                 d.style.display = "block";
                 msg.innerHTML = "Oops! Offer Name is missing.";
                 FName.focus();
                 return false;
             }
             else if (Code.value == "") {
                 d.style.display = "block";
                 msg.innerHTML = "Oops! Code is missing.";
                 FName.focus();
                 return false;
             }

             else {
                 d.style.display = "none";
                 return true;
             }

         }

    </script>
            <div id="success" class="success" runat="server">
                <table cellpadding="10" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/success.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblSuccess" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('success');" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="error" class="error" runat="server">
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/error.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('error');" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="info" class="info" runat="server">
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/info.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblInfo" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('info');" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="attention" class="attention" runat="server">
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/attention.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblAttention" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('attention');" />
                        </td>
                    </tr>
                </table>
            </div>
      <h3 class="card-header">Offer Master</h3><br />
    <div class="table-responsive">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="OffId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="OffNameTextBox" runat="server" Text='<%# Bind("OffName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Code:
                    </td>
                    <td>
                        <asp:TextBox ID="OffCodeTextBox" runat="server" Text='<%# Bind("OffCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" CausesValidation="True" CommandName="Update" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Up'); " />
                         <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="OffNameTextBox" runat="server" Text='<%# Bind("OffName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Code:
                    </td>
                    <td>
                        <asp:TextBox ID="OffCodeTextBox" runat="server" Text='<%# Bind("OffCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Ins'); " />
                         <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>
            </table>
            <%--OffName:
            
            <br />
            OffCode:
            
            <br />
            ValidDate:
            <asp:TextBox ID="ValidDateTextBox" runat="server" Text='<%# Bind("ValidDate") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            OffId:
            <asp:Label ID="OffIdLabel" runat="server" Text='<%# Eval("OffId") %>' />
            <br />
            OffName:
            <asp:Label ID="OffNameLabel" runat="server" Text='<%# Bind("OffName") %>' />
            <br />
            OffCode:
            <asp:Label ID="OffCodeLabel" runat="server" Text='<%# Bind("OffCode") %>' />
            <br />
            ValidDate:
            <asp:Label ID="ValidDateLabel" runat="server" Text='<%# Bind("ValidDate") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="OfferInsert" InsertCommandType="StoredProcedure" SelectCommand="OfferGet" SelectCommandType="StoredProcedure" UpdateCommand="OfferUpdate" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="OffName" Type="String" />
            <asp:Parameter Name="OffCode" Type="String" />
            <asp:Parameter DbType="Date" Name="ValidDate" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OffId" PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OffId" Type="Int64" />
            <asp:Parameter Name="OffName" Type="String" />
            <asp:Parameter Name="OffCode" Type="String" />
            <asp:Parameter DbType="Date" Name="ValidDate" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OffId" DataSourceID="SqlDataSource2" OnRowDeleted="GridView1_RowDeleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="OffId" HeaderText="OffId" InsertVisible="False" ReadOnly="True" SortExpression="OffId" />
            <asp:BoundField DataField="OffName" HeaderText="OffName" SortExpression="OffName" />
            <asp:BoundField DataField="OffCode" HeaderText="OffCode" SortExpression="OffCode" />
            <asp:BoundField DataField="ValidDate" HeaderText="ValidDate" SortExpression="ValidDate" />
             <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/Images/edit.png" CommandName="Select" Width="25px" Height="25px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                 <ItemTemplate>
                    <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" ImageUrl="~/Images/delete.png" Width="25px" Height="25px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="OfferDelete" DeleteCommandType="StoredProcedure" SelectCommand="OfferGet" SelectCommandType="StoredProcedure" UpdateCommand="OfferUpdate" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="OffId" Type="Int64" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="OffId" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OffId" Type="Int64" />
            <asp:Parameter Name="OffName" Type="String" />
            <asp:Parameter Name="OffCode" Type="String" />
            <asp:Parameter DbType="Date" Name="ValidDate" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

