<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FlavourMaster.aspx.cs" Inherits="Admin_FlavourMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .drop {
            display: block;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -moz-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            max-width: 200px;
            min-width: 500px;
        }  
 .drop:focus {  
    border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
} 
 

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">

        function ValidateData(val) {
            var FName = document.getElementById("ContentPlaceHolder1_fvFlavour_FNameTextBox");

            var d = document.getElementById("ContentPlaceHolder1_error");
            var d1 = document.getElementById("ContentPlaceHolder1_success");
            var msg = document.getElementById("ContentPlaceHolder1_lblError");

            d.style.display = "none";
            d1.style.display = "none";

            if (FName.value == "") {
                d.style.display = "block";
                msg.innerHTML = "Oops! Flavour Name is missing.";
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
      <h3 class="card-header">Flavour Master</h3><br />
    <div class="table-responsive">
    <asp:FormView ID="fvFlavour" runat="server" DataKeyNames="FId" DataSourceID="dsFlavour" DefaultMode="Insert" OnItemInserted="fvFlavour_ItemInserted" OnItemUpdated="fvFlavour_ItemUpdated" Width="50%" OnItemInserting="fvFlavour_ItemInserting">
        <EditItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        Flavour Name
                    </td>
                    <td>
                         <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' CssClass="md-12 form-control" onkeypress="return isAlpha(event,this);"  />
                    </td>
                </tr>
                 <tr>
                    <td>

                    </td>
                    <td>
                          <asp:Button ID="btnUpdate" runat="server" Text="Update" CausesValidation="True" CommandName="Update" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Up'); " />
                         <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>
                
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        Flavour Name
                    </td>
                    <td>
                         <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' CssClass="md-12 form-control" onkeypress="return isAlpha(event,this);"  />
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
           <%--<div class="card-footer">
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg" Height="50px" Width="125px" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg" Height="50px" Width="125px"  /><br />
             </div>--%>
           <%-- FName:
           
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"  Text="Cancel" />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            FId:
            <asp:Label ID="FIdLabel" runat="server" Text='<%# Eval("FId") %>' />
            <br />
            FName:
            <asp:Label ID="FNameLabel" runat="server" Text='<%# Bind("FName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</div>
    <asp:SqlDataSource ID="dsFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="FlavourInsert" InsertCommandType="StoredProcedure" SelectCommand="FlavourGet" SelectCommandType="StoredProcedure" UpdateCommand="FlavourUpdate" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="FName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvFlavour" Name="FId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FId" Type="Int32" />
            <asp:Parameter Name="FName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="table-responsive table-responsive-data2">
    <div class="p_id">
    <asp:GridView ID="gvFlavour" runat="server" AutoGenerateColumns="False" DataKeyNames="FId" DataSourceID="dsListFlavour" OnSelectedIndexChanged="gvFlavour_SelectedIndexChanged" CssClass="table table-stripped" OnRowDeleted="gvFlavour_RowDeleted" >
        <Columns>
            <%--<asp:BoundField DataField="FId" HeaderText="FId" InsertVisible="False" ReadOnly="True" SortExpression="FId" />--%>
            <asp:BoundField DataField="FName" HeaderText="Flavour Name" SortExpression="FName" />
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
    </div>   
        </div>
    <asp:SqlDataSource ID="dsListFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="FlavourDelete" DeleteCommandType="StoredProcedure" SelectCommand="FlavourGet" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="FId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="FId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                            
</asp:Content>

