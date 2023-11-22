<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.GaleriEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Resim Galerisi İşlemleri Sayfası</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="col-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">

              <form class="forms-sample" runat="server">

                  <h3>Galeri Resim Yükleme Alanı</h3>
                   <div class="form-group">
                       <label for="txtKategori">Resim Adı</label>
                         <div class="input-group">
                             <asp:TextBox CssClass="form-control" ID="txtResimAd" runat="server" pleaceholder="Resim Adı"></asp:TextBox>
                         </div>
                   </div>

                <div class="form-group">
                  <label for="txtKategori">Kategori Adı</label>
                    <div class="input-group">
                        <asp:DropDownList ID="txtKategori" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label>Galeri Resim</label>
                    <input type="file" name="img[]" class="form-control file-upload-default" />
                    <asp:FileUpload ID="txtUpload" runat="server" CssClass="form-control file-upload-info" />
                </div>
                    <asp:Button ID="Button2" runat="server" CssClass=" btn btn-gradient-primary mr-2" Text="Resim Yükle" />
                </form>
            </div>
          </div>
        </div>

</asp:Content>
