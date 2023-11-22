<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 classpage-title>Blog Ekleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <form class="forms-sample" runat="server">
                <div class="form-group">
                  <label for="txtBaslik">Başlık</label>
                    <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="txtOzet">Özet</label>
                    <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Blog Ozet"></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="txtKategori">Kategori</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList> 
                </div>
                <div class="form-group">
                  <label>Blog Resim</label>
                    <input type="file" name="img[]" class="file-upload-default" />
                        <asp:FileUpload ID="txtUpload" runat="server" CssClass="form-control file-upload-info" />
                </div>
                <div class="form-group">
                  <label for="txtDetay">Blog Detay</label>
                  <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                </div>
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" OnClick="Button1_Click" />
              </form>
            </div>
          </div>
        </div>
</asp:Content>
