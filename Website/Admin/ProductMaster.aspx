<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductMaster.aspx.cs" Inherits="Admin_ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            min-width: 365px;
        }  
 .drop:focus {  
    border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
} 

 .table-condensed tr th {
border: 0px solid #6e7bd9;
color: white;
background-color: #4E3B19;
}

.table-condensed, .table-condensed tr td {
border: 0px solid #000;
}

tr:nth-child(even) {
background: #f8f7ff;
}

tr:nth-child(odd) {
background: #fff;
}
 

    </style>
        <h3 class="card-header">Product Master</h3><br />
    <div class="table-responsive" >
        <script type="text/javascript">
           

                function ValidateData(val) {
                    var ProductName = document.getElementById("ContentPlaceHolder1_fvProductMaster_ProductNameTextBox");
                    var flavour = document.getElementById("ContentPlaceHolder1_fvProductMaster_ddFlavour");
                    var category = document.getElementById("ContentPlaceHolder1_fvProductMaster_ddCategory");
                    var ShortDesc = document.getElementById("ContentPlaceHolder1_fvProductMaster_ShortDescriptionTextBox");
                    var MRP = document.getElementById("ContentPlaceHolder1_fvProductMaster_MRPTextBox");
                    var DiscountAmt = document.getElementById("ContentPlaceHolder1_fvProductMaster_DiscountAmtTextBox");
                    var SalesRate = document.getElementById("ContentPlaceHolder1_fvProductMaster_SalesRateTextBox");
                    var Volume = document.getElementById("ContentPlaceHolder1_fvProductMaster_VolumeTextBox");

                    var d = document.getElementById("ContentPlaceHolder1_error");
                    var d1 = document.getElementById("ContentPlaceHolder1_success");
                    var msg = document.getElementById("ContentPlaceHolder1_lblError");

                    d.style.display = "none";
                    d1.style.display = "none";



                    if (ProductName.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Opps! Product name is missing.";
                        ProductName.focus();
                        return false;
                        
                    }
                    else if (flavour.value == "0") {
                        d.style.display = "block";
                        msg.innerHTML = "Please select flavour.";
                        flavour.focus();
                        return false;
                    }
                    else if (category.value == "0") {
                        d.style.display = "block";
                        msg.innerHTML = "Please select category.";
                        category.focus();
                        return false;
                    }
                    else if (ShortDesc.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Opps! Short Description is missing.";
                        ShortDesc.focus();
                        return false;
                    }

                    else if (MRP.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Insert MRP.";
                        MRP.focus();
                        return false;
                    }
                    else if (DiscountAmt.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Insert Discount Amount.";
                        DiscountAmt.focus();
                        return false;
                    }
                    else if (SalesRate.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Insert Sales Rate.";
                        SalesRate.focus();
                        return false;
                    }
                    else if (Volume.value == "") {
                        d.style.display = "block";
                        msg.innerHTML = "Insert Volume.";
                        Volume.focus();
                        return false;
                    }

                    else {
                        //d.style.display = "none";
                        //return true;
                        swal({
                            title: "Good job!",
                            text: "You clicked the button!",
                            icon: "success",
                            button: "Aww yiss!",
                        });
                        return true;
                    }

                }
               

            </script>
            <div id="success" class="success" runat="server">
                <table cellpadding="5" cellspacing="0" style="width: 100%;">
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
       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
    <asp:FormView ID="fvProductMaster" runat="server" DataKeyNames="ProductId" DataSourceID="dsProductMaster" DefaultMode="Insert" OnItemInserted="fvProductMaster_ItemInserted" OnItemUpdated="fvProductMaster_ItemUpdated" CellSpacing="2" Width="100%" OnItemInserting="fvProductMaster_ItemInserting">
        <EditItemTemplate>
          <%--  ProductId:
            <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            FId:
            <asp:TextBox ID="FIdTextBox" runat="server" Text='<%# Bind("FId") %>' />
            <br />
            CatId:
            <asp:TextBox ID="CatIdTextBox" runat="server" Text='<%# Bind("CatId") %>' />
            <br />
            ShortDescription:
            <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
            <br />
            MRP:
            <asp:TextBox ID="MRPTextBox" runat="server" Text='<%# Bind("MRP") %>' />
            <br />
            DiscountAmt:
            <asp:TextBox ID="DiscountAmtTextBox" runat="server" Text='<%# Bind("DiscountAmt") %>' />
            <br />
            SalesRate:
            <asp:TextBox ID="SalesRateTextBox" runat="server" Text='<%# Bind("SalesRate") %>' />
            <br />
            ImagePath:
            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            Volume:
            <asp:TextBox ID="VolumeTextBox" runat="server" Text='<%# Bind("Volume") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
             <table class="table">
                <tr>
                     
                    <td>
                        Product Name
                    </td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' CssClass="form-control"  TextMode="SingleLine" onkeypress="return isAlpha(event,this);" title="Please enter Alphabets only" />
                    </td>
                 
                </tr>
                <caption>
                    <br />
                    <tr>
                        <td>Flavour </td>
                        <td>
                            <div class="form-group">
                                <asp:DropDownList ID="ddFlavour" runat="server" CssClass="drop" DataSourceID="dsFlavour" DataTextField="FName" DataValueField="FId" SelectedValue='<%# Bind("FId") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="dsFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllFlavour" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td>Category </td>
                            <td>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddCategory" runat="server" CssClass="drop" DataSourceID="dsCategory" DataTextField="catName" DataValueField="catId" SelectedValue='<%# Bind("CatId") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllCategory" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Short Description </td>
                            <td>
                                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" CssClass="form-control" Height="146px" Rows="9" Text='<%# Bind("ShortDescription") %>' Width="293px" Wrap="True" TextMode="MultiLine" onkeypress="return isAlpha(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>MRP </td>
                            <td>
                                <asp:TextBox ID="MRPTextBox" runat="server" CssClass="form-control" Text='<%# Bind("MRP") %>' AutoPostBack="True" OnTextChanged="MRPTextBox_TextChanged" onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Discount </td>
                            <td>
                                <asp:TextBox ID="DiscountAmtTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DiscountAmt") %>' AutoPostBack="True" OnTextChanged="DiscountAmtTextBox_TextChanged" onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Sales Rate </td>
                            <td>
                                <asp:TextBox ID="SalesRateTextBox" runat="server" CssClass="form-control" Text='<%# Bind("SalesRate") %>' ReadOnly="True"  />
                            </td>
                        </tr>
                        <tr>
                            <td>Net Content </td>
                            <td>
                                <asp:TextBox ID="VolumeTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Volume") %>' onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Image </td>
                            <td>
                                <asp:FileUpload ID="fuProductUpdate" runat="server" CssClass="form-control-file" />
                            </td>
                        </tr>
                        <tr>
                    <%--<td>
                        <asp:Image ID="imgUpload" runat="server" Height="100px" Width="100px"/>
                    </td>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </td>--%>
                </tr>
                       
                    </caption>
                </caption>
            </table>
                 
            <div class="card-footer">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CausesValidation="True" CommandName="Update" class="btn btn-primary btn-lg" Height="50px" Width="125px" OnClientClick="return ValidateData('Up'); " />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg" Height="50px" Width="125px"  /><br />
                    </div>
           
        </div>
        </EditItemTemplate>
        <InsertItemTemplate>
        
            <table class="table table-striped table-bordered" style="width:100%">
                <tr>
                     
                    <td>
                        Product Name
                    </td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' CssClass="form-control"  TextMode="SingleLine" onkeypress="return isAlpha(event,this);" title="Please enter Alphabets only" />
                    </td>
                 
                </tr>
                <caption>
                    <br />
                    <tr>
                        <td>Flavour </td>
                        <td>
                            <div class="form-group">
                                <asp:DropDownList ID="ddFlavour" runat="server" CssClass="drop" DataSourceID="dsFlavour" DataTextField="FName" DataValueField="FId" SelectedValue='<%# Bind("FId") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="dsFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllFlavour" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td>Category </td>
                            <td>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddCategory" runat="server" CssClass="drop" DataSourceID="dsCategory" DataTextField="catName" DataValueField="catId" SelectedValue='<%# Bind("CatId") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllCategory" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Short Description </td>
                            <td>
                                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" CssClass="form-control" Height="146px" Rows="9" Text='<%# Bind("ShortDescription") %>' Width="293px" Wrap="True" TextMode="MultiLine" onkeypress="return isAlpha(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>MRP </td>
                            <td>
                                <asp:TextBox ID="MRPTextBox" runat="server" CssClass="form-control" Text='<%# Bind("MRP") %>' AutoPostBack="True" OnTextChanged="MRPTextBox_TextChanged" onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Discount </td>
                            <td>
                                <asp:TextBox ID="DiscountAmtTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DiscountAmt") %>' AutoPostBack="True" OnTextChanged="DiscountAmtTextBox_TextChanged" onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Sales Rate </td>
                            <td>
                                <asp:TextBox ID="SalesRateTextBox" runat="server" CssClass="form-control" Text='<%# Bind("SalesRate") %>' ReadOnly="True"  />
                            </td>
                        </tr>
                        <tr>
                            <td>Net Content </td>
                            <td>
                                <asp:TextBox ID="VolumeTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Volume") %>' onkeypress="return isNumberKey(event,this);" />
                            </td>
                        </tr>
                        <tr>
                            <td>Image </td>
                            <td>
                                <asp:FileUpload ID="fuProduct" runat="server" CssClass="form-control-file" />
                            </td>
                        </tr>
                        <tr>
                    <%--<td>
                        <asp:Image ID="imgUpload" runat="server" Height="100px" Width="100px"/>
                    </td>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </td>--%>
                </tr>
                       
                    </caption>
                </caption>
            </table>
                 
            <div class="card-footer">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CausesValidation="True" CommandName="Insert" class="btn btn-primary btn-lg" Height="50px" Width="125px" OnClientClick="return ValidateData('Ins'); " />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" CommandName="Cancel" class="btn btn-danger btn-lg" Height="50px" Width="125px"  /><br />
                    </div>
           
        </div>
            </div>
            
           <%-- ProductName:
            
            <br />
            FId:
            <asp:TextBox ID="FIdTextBox" runat="server" Text='<%# Bind("FId") %>' />
            <br />
            CatId:
            <asp:TextBox ID="CatIdTextBox" runat="server" Text='<%# Bind("CatId") %>' />
            <br />
            ShortDescription:
           
            <br />
            MRP:
           
            <br />
            DiscountAmt:
            
            <br />
            SalesRate:
           
            <br />
            ImagePath:
            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            Volume:
            
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"  Text="Cancel" />--%>
         <%-- <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
            <div class="form-group row">
                Product Name:
                
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' CssClass="form-control"  TextMode="SingleLine" />
                    
            </div>
            
                <div class="form-group row">
                        Flavour
                   <div class="col-9 col-lg-10">
                      <asp:DropDownList ID="ddFlavour" runat="server" CssClass="selectpicker" DataSourceID="dsFlavour" DataTextField="FName" DataValueField="FId" SelectedValue='<%# Bind("FId") %>'>
                       </asp:DropDownList>
                       <asp:SqlDataSource ID="dsFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllFlavour" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                   </div>
            </div>--%>
          
            
        </InsertItemTemplate>
        <ItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            FId:
            <asp:Label ID="FIdLabel" runat="server" Text='<%# Bind("FId") %>' />
            <br />
            CatId:
            <asp:Label ID="CatIdLabel" runat="server" Text='<%# Bind("CatId") %>' />
            <br />
            ShortDescription:
            <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Bind("ShortDescription") %>' />
            <br />
            MRP:
            <asp:Label ID="MRPLabel" runat="server" Text='<%# Bind("MRP") %>' />
            <br />
            DiscountAmt:
            <asp:Label ID="DiscountAmtLabel" runat="server" Text='<%# Bind("DiscountAmt") %>' />
            <br />
            SalesRate:
            <asp:Label ID="SalesRateLabel" runat="server" Text='<%# Bind("SalesRate") %>' />
            <br />
            ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
            <br />
            Volume:
            <asp:Label ID="VolumeLabel" runat="server" Text='<%# Bind("Volume") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView><br />
           </div>
    </div>
    <asp:SqlDataSource ID="dsProductMaster" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="ProductMasterInsert" InsertCommandType="StoredProcedure" SelectCommand="ProductMasterGet" SelectCommandType="StoredProcedure" UpdateCommand="ProductMasterUpdate" UpdateCommandType="StoredProcedure" OnInserting="dsProductMaster_Inserting" OnUpdating="dsProductMaster_Updating">
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="FId" Type="Int32" />
            <asp:Parameter Name="CatId" Type="Int32" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MRP" Type="Decimal" />
            <asp:Parameter Name="DiscountAmt" Type="Decimal" />
            <asp:Parameter Name="SalesRate" Type="Decimal" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="Volume" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvProductMaster" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="FId" Type="Int32" />
            <asp:Parameter Name="CatId" Type="Int32" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MRP" Type="Decimal" />
            <asp:Parameter Name="DiscountAmt" Type="Decimal" />
            <asp:Parameter Name="SalesRate" Type="Decimal" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="Volume" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <div class="table-responsive table-responsive-data2">
     
    <div id="p_id">
    
    <asp:GridView ID="gvProductMaster" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="dsListProductMaster" OnSelectedIndexChanged="gvProductMaster_SelectedIndexChanged" CssClass="table table-condensed table-hover" OnRowDeleted="gvProductMaster_RowDeleted" AllowPaging="True" PageSize="1" Font-Bold="True">

        <Columns>
            <%--<asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />--%>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" ControlStyle-CssClass="text-brand" />
            <asp:BoundField DataField="FName" HeaderText="Flavour" SortExpression="FName" />
            <asp:BoundField DataField="CatName" HeaderText="Category" SortExpression="CatName" />
            <asp:BoundField DataField="ShortDescription" HeaderText="Short Description" SortExpression="ShortDescription" />
            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
            <asp:BoundField DataField="DiscountAmt" HeaderText="Discount Amount" SortExpression="DiscountAmt" />
            <asp:BoundField DataField="SalesRate" HeaderText="Sales Rate" SortExpression="SalesRate" />
           <%-- <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />--%>
            <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate >
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../"+Eval("ImagePath") %>' Height="300px" Width="200px" />
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
    <asp:SqlDataSource ID="dsListProductMaster" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="ProductMasterDelete" DeleteCommandType="StoredProcedure" SelectCommand="ProductMasterGet" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="ProductId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
               

</asp:Content>

