﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Kategori Ekle/Sil Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <form class="forms-sample" runat="server">
                <div class="form-group">
                  <label for="txtAd">Tur Adı</label>
                    <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                </div>               
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" />
              </form>
            </div>
          </div>
        </div>
</asp:Content>
