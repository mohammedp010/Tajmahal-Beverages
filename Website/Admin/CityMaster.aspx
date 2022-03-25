<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CityMaster.aspx.cs" Inherits="Admin_CityMaster" %>

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
            var CName = document.getElementById("ContentPlaceHolder1_fvCity_CityNameTextBox");

            var d = document.getElementById("ContentPlaceHolder1_error");
            var d1 = document.getElementById("ContentPlaceHolder1_success");
            var msg = document.getElementById("ContentPlaceHolder1_lblError");

            d.style.display = "none";
            d1.style.display = "none";

            if (CName.value == "") {
                d.style.display = "block";
                msg.innerHTML = "Oops! City Name is missing.";
                CName.focus();
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
      <h3 class="card-header">City Master</h3><br />
    <div class="table-responsive">
    <asp:FormView ID="fvCity" runat="server" DataKeyNames="CityId" DataSourceID="dsCity" DefaultMode="Insert" OnItemInserted="fvCity_ItemInserted" OnItemUpdated="fvCity_ItemUpdated" OnItemInserting="fvCity_ItemInserting">
        <EditItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        City Name
                    </td>
                    <td>
                        <asp:TextBox ID="CityNameTextBox" runat="server" Text='<%# Bind("CityName") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        State
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId" SelectedValue='<%# Bind("StateId") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Up'); " />
                        <asp:Button ID="btnReset" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-danger btn-lg" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        City Name
                    </td>
                    <td>
                        <asp:TextBox ID="CityNameTextBox" runat="server" Text='<%# Bind("CityName") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        State
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId" SelectedValue='<%# Bind("StateId") %>'></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Ins'); " />
                        <asp:Button ID="btnReset" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-danger btn-lg" />
                    </td>
                </tr>
            </table>
            <%--CityName:
            
            <br />
            StateId:
            <asp:TextBox ID="StateIdTextBox" runat="server" Text='<%# Bind("StateId") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"  />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            CityId:
            <asp:Label ID="CityIdLabel" runat="server" Text='<%# Eval("CityId") %>' />
            <br />
            CityName:
            <asp:Label ID="CityNameLabel" runat="server" Text='<%# Bind("CityName") %>' />
            <br />
            StateId:
            <asp:Label ID="StateIdLabel" runat="server" Text='<%# Bind("StateId") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>
    <asp:SqlDataSource ID="dsCity" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="CityInsert" InsertCommandType="StoredProcedure" SelectCommand="CityGet" SelectCommandType="StoredProcedure" UpdateCommand="CityUpdate" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="CityName" Type="String" />
            <asp:Parameter Name="StateId" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvCity" Name="CityId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CityId" Type="Int32" />
            <asp:Parameter Name="CityName" Type="String" />
            <asp:Parameter Name="StateId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="table-responsive table-responsive-data2">
    <asp:GridView ID="gvCity" runat="server" AutoGenerateColumns="False" DataKeyNames="CityId" DataSourceID="dsListCity" OnSelectedIndexChanged="gvCity_SelectedIndexChanged" CssClass="table table-stripped" OnRowDeleted="gvCity_RowDeleted">
        <Columns>
            <asp:BoundField DataField="CityId" HeaderText="CityId" InsertVisible="False" ReadOnly="True" SortExpression="CityId" />
            <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
            <%--<asp:BoundField DataField="StateId" HeaderText="StateId" SortExpression="StateId" />--%>
            <%--<asp:BoundField DataField="StateId" HeaderText="StateId" SortExpression="StateId" />--%>
            <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
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
    <asp:SqlDataSource ID="dsListCity" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="CityDelete" DeleteCommandType="StoredProcedure" SelectCommand="CityGet" SelectCommandType="StoredProcedure" UpdateCommand="CityUpdate" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="CityId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="CityId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CityId" Type="Int32" />
            <asp:Parameter Name="CityName" Type="String" />
            <asp:Parameter Name="StateId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

