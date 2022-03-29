<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master.cs" AutoEventWireup="true" CodeFile="HomePageSlider.aspx.cs" Inherits="HomePageSlider" %>

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
<div class="table-responsive">
     <h3 class="card-header">Home Page Slider Image Master</h3><br />
    <asp:FormView ID="fvHomePageSlider" runat="server" DataKeyNames="HomeId" DataSourceID="dsHomePageSlider" DefaultMode="Insert" OnItemInserted="fvHomePageSlider_ItemInserted" OnItemUpdated="fvHomePageSlider_ItemUpdated">
        <EditItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        Image
                    </td>
                    <td>
                        <asp:FileUpload ID="fuHomeSlider" runat="server" CssClass="form-control-file" />
                    </td>
                </tr>
                 <tr>
                    <td>

                    </td>
                    <td>
                          <asp:Button ID="btnUpdate" runat="server" Text="Update" CausesValidation="True" CommandName="Update" class="btn btn-primary btn-lg"  />
                         <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>
                
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table">
                <tr>
                    <td>
                        Image
                    </td>
                    <td>
                        <asp:FileUpload ID="fuHomeSlider" runat="server" CssClass="form-control-file" />
                    </td>
                </tr>
                 <tr>
                    <td>

                    </td>
                    <td>
                          <asp:Button ID="Button1" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg"  />
                         <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>
                
            </table>
            <%--<div class="card-footer">
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg" Height="50px" Width="125px" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg" Height="50px" Width="125px"  /><br />
             </div>--%>
           <%-- ImagePath:
            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"  Text="Cancel" />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            HomeId:
            <asp:Label ID="HomeIdLabel" runat="server" Text='<%# Eval("HomeId") %>' />
            <br />
            ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </div>
    <asp:SqlDataSource ID="dsHomePageSlider" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="HomePageSliderInsert" InsertCommandType="StoredProcedure" SelectCommand="HomePageSliderGet" SelectCommandType="StoredProcedure" UpdateCommand="HomePageSliderUpdate" UpdateCommandType="StoredProcedure" OnInserting="dsHomePageSlider_Inserting">
        <InsertParameters>
            <asp:Parameter Name="ImagePath" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvHomePageSlider" Name="HomeId" PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="HomeId" Type="Int32" />
            <asp:Parameter Name="ImagePath" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="table-responsive table-responsive-data2">
    <div class="p_id">
    <asp:GridView ID="gvHomePageSlider" runat="server" AutoGenerateColumns="False" DataKeyNames="HomeId" DataSourceID="dsListHomePageSlider" OnSelectedIndexChanged="gvHomePageSlider_SelectedIndexChanged" CssClass="table table-data2" OnRowDeleted="gvHomePageSlider_RowDeleted">
        <Columns>
            <asp:BoundField DataField="HomeId" HeaderText="HomeId" InsertVisible="False" ReadOnly="True" SortExpression="HomeId" />
            <%--<asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />--%>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="imgHomeSlider" runat="server" ImageUrl='<%# "../"+Eval("ImagePath") %>' Height="450px" Width="1200px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="dsListHomePageSlider" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="HomePageSliderDelete" DeleteCommandType="StoredProcedure" SelectCommand="HomePageSliderGet" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="HomeId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="HomeId" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
                            
</asp:Content>

