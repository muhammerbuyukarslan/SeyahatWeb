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
                <div class="form-group">
                  <label for="txtAd">Kategori Adı</label>
                    <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                </div>               
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kategori Ekle" />
                </form>
            </div>
          </div>
        </div>

</asp:Content>
