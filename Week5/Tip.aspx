<%@ Page Title="Tip Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tip.aspx.cs" Inherits="Week5.Tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <h1>Tip Calculator</h1>
    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" type="number" step="any" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" CssClass="alert-danger" ControlToValidate="txtAmount" Display="Dynamic">

      </asp:RequiredFieldValidator>
        
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Invalid Input" CssClass="alert-danger" ControlToValidate="txtAmount" 
            MaximumValue="9999999" MinimumValue="0.01" Type="Currency" Display="Dynamic">

        </asp:RangeValidator>
    </div>
    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Text="-Choose-" />
            <asp:ListItem Value=".1" Text="10%" />
            <asp:ListItem Value=".15" Text="15%" />
            <asp:ListItem Value=".20" Text="20%" />
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator2" runat="server"
            ErrorMessage="Choose A Tip" CssClass="alert-danger" ControlToValidate="ddlPercent" 
            Type="Double" MinimumValue="0" MaximumValue="1">

        </asp:RangeValidator>
    </div>
    <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" CssClass="btn btn-success col-sm-offset-2" OnClick="btnCalculate_Click" />

    <div>
        Tip: <asp:Label ID="lblTip" runat="server"/>
    </div>

    <div>
        Total: <asp:Label ID="lblTotal" runat="server"/>
    </div>

</asp:Content>
