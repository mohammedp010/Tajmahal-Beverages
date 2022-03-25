<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CategotyMaster.aspx.cs" Inherits="Admin_CategotyMaster" %>

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
    <div class="table-responsive">
   <h3 class="card-header">Category Master</h3><br />

           <script type="text/javascript">

               function ValidateData(val) {
                   var CategoryName = document.getElementById("ContentPlaceHolder1_fvCat_CatNameTextBox");

                   var d = document.getElementById("ContentPlaceHolder1_error");
                   var d1 = document.getElementById("ContentPlaceHolder1_success");
                   var msg = document.getElementById("ContentPlaceHolder1_lblError");

                   d.style.display = "none";
                   d1.style.display = "none";

                   if (CategoryName.value == "") {
                       d.style.display = "block";
                       msg.innerHTML = "Opps! Category name is missing.";
                       CategoryName.focus();
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
        <asp:FormView ID="fvCat" runat="server" DataKeyNames="CatId" DataSourceID="dsCat" DefaultMode="Insert" OnItemInserted="fvCat_ItemInserted" OnItemUpdated="fvCat_ItemUpdated" Width="45%" OnItemInserting="fvCat_ItemInserting">
           




        <EditItemTemplate>
            <table class="table">
                <tr>
                   
                    <td>
                        Category Name 
                    </td>
                    <td>
                       
                        
                       
                        <asp:TextBox ID="CatNameTextBox" runat="server" Text='<%# Bind("CatName") %>' CssClass="form-control" TextMode="SingleLine" onkeypress="return isAlpha(event,this);"  />
                        
                       
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                          <asp:Button ID="btnUpdate" runat="server" Text="Update" CausesValidation="True" CommandName="Update" class="btn btn-primary btn-lg" OnClientClick="return ValidateData('Up'); " />
                         <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />
                    </td>
                </tr>

                   
              
                
            </table><br />
                
            </div>
           <%-- CatId:
            <asp:Label ID="CatIdLabel1" runat="server" Text='<%# Eval("CatId") %>' CssClass="form-control" />
            <br />
            CatName:
            <asp:TextBox ID="CatNameTextBox" runat="server" Text='<%# Bind("CatName") %>' CssClass="form-control" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
        </EditItemTemplate>
        <InsertItemTemplate>
         
             
            <table class="table">
                <tr>
                   
                    <td>
                        Category Name 
                    </td>
                    <td>
                       
                        
                       
                        <asp:TextBox ID="CatNameTextBox" runat="server" Text='<%# Bind("CatName") %>' CssClass="form-control" TextMode="SingleLine" onkeypress="return isAlpha(event,this);"  />
                        
                       
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

                   
              
                
            </table><br />
                
            </div>
           <%-- <div class="form-group">
                    <label for="inputText3" class="col-form-label">Category Name</label>
                    <asp:TextBox ID="CatNameTextBox" runat="server" Text='<%# Bind("CatName") %>' CssClass="form-control" TextMode="SingleLine"  />
                    <%--<input id="inputText3" type="text" class="form-control">--%>
                

              <%--</div>
             <asp:Button ID="Button1" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg"  />
                         <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg"   /><br />--%>
                       
                       
            
                       
                        
             
          <%--  CatName:
            
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"  Text="Cancel" />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            CatId:
            <asp:Label ID="CatIdLabel" runat="server" Text='<%# Eval("CatId") %>' />
            <br />
            CatName:
            <asp:Label ID="CatNameLabel" runat="server" Text='<%# Bind("CatName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</div>
    <asp:SqlDataSource ID="dsCat" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="CategoryInsert" InsertCommandType="StoredProcedure" SelectCommand="CategoryGet" SelectCommandType="StoredProcedure" UpdateCommand="CategoryUpdate" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvCat" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CatId" Type="Int32" />
            <asp:Parameter Name="CatName" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <div class="table-responsive table-responsive-data2">
    <div class="p_id">
    <asp:GridView ID="gvCat" runat="server" AutoGenerateColumns="False" DataKeyNames="CatId" DataSourceID="dsListCat" OnSelectedIndexChanged="gvCat_SelectedIndexChanged" CssClass="table table-data2" OnRowDeleted="gvCat_RowDeleted">
        <Columns>
            <%--<asp:BoundField DataField="CatId" HeaderText="CatId" InsertVisible="False" ReadOnly="True" SortExpression="CatId" />--%>
            <asp:BoundField DataField="CatName" HeaderText="Category Name" SortExpression="CatName" />
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/edit.png" CommandName="Select" Width="25px" Height="25px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                 <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" ImageUrl="~/Images/delete.png" Width="25px" Height="25px" />
                </ItemTemplate>
            </asp:TemplateField>
               
            
        </Columns>
    </asp:GridView>
      </div>  
        </div>
    <asp:SqlDataSource ID="dsListCat" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="CategoryDelete" DeleteCommandType="StoredProcedure" SelectCommand="CategoryGet" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="CatId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="CatId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                    
                 
                
            
       
    
    
</asp:Content>

