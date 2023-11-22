<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="SeyahatWeb.Yonetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları İşlem Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <form class="forms-sample" runat="server">
            <div class="form-group">
              <label for="txtMail">E-Mail</label>
                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtTlf">Özet</label>
                <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtTlf">Adres</label>
                <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Adres"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtTlf">Twitter</label>
                <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtTlf">Youtube</label>
                <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtInstagram">Instagram</label>
                <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="txtFacebook">Facebook</label>
                <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Facebook"></asp:TextBox>
            </div>
            <div class="form-group">
              <label>Logo</label>
                <input type="file" name="img[]" class="file-upload-default" />
                    <asp:FileUpload ID="txtUpload" runat="server" CssClass="form-control file-upload-info" />
            </div>
            <div class="form-group">
              <label for="txtDetay">Site Açıklama</label>
              <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
                <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
            </div>
              <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" />
          </form>
        </div>
      </div>
    </div>
</asp:Content>
