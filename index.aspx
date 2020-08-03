<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="index.aspx.cs" Inherits="OnlineFoodDelivery.index" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" >
	<style>
       .checked
           {
               color: orange;
           }
           .img{
               width:700px;
               height:300px;
           }
       </style>
	<section class="carousel-slider-main text-center border-top border-bottom bg-white">
         <div class="owl-carousel owl-carousel-slider">
            <div class="item">
               <a href=" index.aspx"><img class="img-fluid" src="images/slider1.jpg" alt="First slide"></a>
            </div>
            <div class="item">
               <a href="index.aspx"><img class="img-fluid" src="images/slider2.jpg" alt="First slide"></a>
            </div>
         </div>
      </section>
       
                    <!-- stores name -->
              <div class="container">
            
                     <h2 style="padding:5px;text-align:center; margin:10px; font-weight: bold;">Different Restaurants and food places</h2>
                  
           <div class="row">
                     <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/punjab/samosa.jpg" alt="punjabi">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">Punjabi Restaurant</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$18.99 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.7 <span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/south/south.jpg" alt="punjabi">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">South Ka Khana</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$15.99 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.6<span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/italy/italy.jpg" alt="punjabi">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">Italian Food</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$16.5 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.5<span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               </div>
                <div class="row">
                     <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/gujrati/gujrat.jpg" alt="gujrati">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">Gujrati Rasoi</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$10.99 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.3<span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/grill/grill.jpg" alt="Grill & Chill">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">Grill & Chill</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$18 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.3<span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               <div class="col-md-4">
                           <a href="index.aspx">
                                 <img class="img" src="images/spanish/spanish.jpg" alt="Spanish">
                                 <h4 style="padding:5px; text-align:center; margin-bottom: 10px;">Spanish Restaurant</h4>
                               <div class="product-footer">
                                   <h6  style="float:left; font-weight: bold;" >Shipping Cost:$18.99 </h6>
                                       <h6 style="float:right;font-weight: bold;">Ratings 4.5<span class="fa fa-star checked"></span></h6>     
                              </div>   
                         </a>  
                     </div>
               </div>
          </div>

</asp:Content>