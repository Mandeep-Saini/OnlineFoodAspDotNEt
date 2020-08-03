<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="punjabi.aspx.cs" MasterPageFile="~/Site.Master" Inherits="OnlineFoodDelivery.punjabi" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .button, p {
            margin-top: 7px;
        }

        #img {
            width: 400px;
            height: 300px;
        }
    </style>
    <main>
        <div class="container">
            <a href="#"><span class="mdi mdi-home"></span>Home</a> <span class="mdi mdi-chevron-right"></span><a href="#">Restaurant</a> <span class="mdi mdi-chevron-right"></span><a href="#">Punjabi Restaurant</a>
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>
                                <img src="images/punjab/samosa.jpg" id="img" alt="samosa">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Samosa</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/butter.jpg" id="img" alt="butter-chicken">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Butter Chicken</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/saag.JPG" id="img" alt="saag">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Sarson Ka Saag </h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <img src="images/punjab/cholebhature.JPG" id="img" alt="chole bhature">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Chole Bhature</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/naan.JPG" id="img" alt="tandori naan">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Tandoori Naan</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/daal.JPG" id="img" alt="dal makhni">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Dal Makhni</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <img src="images/punjab/paneer-pakoda.jpg" id="img" alt="paneer pakoda">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Paneer Pakoda</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/curry.JPG" id="img" alt="curry pakoda">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Curry Pakoda</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/rajama.JPG" id="img" alt="rajma">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Rajma Dal</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <img src="images/punjab/channamasala.JPG" id="img" alt="channa masala">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Channa Masala</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/aloo.JPG" id="img" alt="aloo">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Aloo Prantha</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                            <td>
                                <img src="images/punjab/paneertikka.JPG" id="img" alt="paneer tikka">
                                <h5 style="text-align: center; margin: 5px; font-weight: 700;">Paneer Tikka</h5>
                                <a href="Menu.aspx" class="btn button btn-secondary btn-sm float-right"><i class="mdi mdi-cart-outline"></i>Add To Cart</a>
                                <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i>
                                    <br>
                                    <span class="regular-price">$800.99</span></p>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </main>
</asp:Content>
