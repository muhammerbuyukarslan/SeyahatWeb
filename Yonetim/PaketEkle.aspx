
<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.PaketEkle" %>

<%@ Import Namespace="System.Web.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">



    string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                string ResimAd = FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(Server.MapPath("~/images" + ResimAd));
                lblResim.Text = ResimAd.ToString();
            }
            else
            {
                lblResim.Text = "Lütfen jpeg,jpg,png uzantılı resim seçin";
            }
        }
        else
        {
            lblResim.Text = "Lütfen bir resim seçin..";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(conf_baglanti);
        baglanti.Open();
        SqlCommand komut = new SqlCommand("insert into tblTurPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values (@Adi,@Fiyat,@Sure,@Lokasyon,@Resim,@Detay)", baglanti);
        komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
        komut.Parameters.AddWithValue("@Fiyat",Convert.ToInt32(txtFiyat.Text.ToString()));
        komut.Parameters.AddWithValue("@Sure",Convert.ToInt32(txtSure.Text.ToString()));
        komut.Parameters.AddWithValue("@Lokasyon", txtKonum.Text.ToString());
        komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
        komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("PaketEkle.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>



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
                      <label>Tur Resim</label>
                        <input type="file" name="img[]" class="file-upload-default" />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Resim Yükle" OnClick="Button2_Click" />                      
                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                      <label for="txtDetay">Tur Detay</label>
                      <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="80px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" OnClick="Button1_Click" />
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
