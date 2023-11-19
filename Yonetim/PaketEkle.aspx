<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Tur Paketi Ekleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="txtAd">Tur Adı</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="txtFiyat">Tur Fiyat</label>
                        <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tur Fiyat"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="txtSure">Tur Süresi</label>
                        <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                    </div>                   
                    <div class="form-group">
                      <label for="txtKonum">Tur Konum</label>
                        <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Tur Konum"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="FileUpload1" class="form-label">Tur Upload</label>
                        <input type="file" name="img[]" class="file-upload-default" />
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                    <div class="form-group">
                      <label for="txtDetay">Tur Detay</label>
                      <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="80px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" />
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
