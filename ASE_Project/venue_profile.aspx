﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="venue_profile.aspx.cs" Inherits="ASE_Project.venue_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        
        h3
        {
            font-weight: bold;
        }
        label {
        
   top:245px;
   right:338px;
   display : block;
   text-align: left;
   color:white;
   top:1000px;
}
         .ultra .clean{
            -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    -khtml-border-radius: 20px;
    border-radius: 20px;        
    border: solid #FF0000; 
            background-color: #C0C0C0; 
            font-family: verdana; 
            font-size: 10pt; 
            font-weight: bold;
            border-top-left-radius: 40px 30px;
            border-bottom-right-radius: 30% 25%;
            border-top-right-radius: 40px;
            border-radius: 40px;
        }
        .anudeep {
            float : left;
   display : inline;
   display : block;
   text-align: left;
   color:aqua;
   top:1000px;
        }
.hello {
            position: absolute;
            top: 116px;
            height: 483px;
            z-index: 9999;
            left: -50px;
            width: 1347px;
            margin:24px 50px;
            background-color:black;
            border:1px solid black;
            opacity:0.7;
            filter:alpha(opacity=70);
        }
 #details {
     opacity:1.0;

 }
 
 .post_header .cufon 
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
 .post_header .post_header_h3 .smile #contact
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
 .post_header .prathyusha  
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
 .post_header label  
{
	margin-top: 5px;
	font-size: 11px;
    float:left;
    color:azure;
}
    </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<link rel="stylesheet" href="fancybox/source/jquery.fancybox.css?v=2.1.3" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/jquery.fancybox.pack.js?v=2.1.3"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>




<script type="text/javascript">
    $(".details").fancybox({
        maxWidth: 800,
        maxHeight: 600,
        fitToView: false,
        width: '70%',
        height: '70%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

    $(".email").fancybox({
        maxWidth: 750,
        maxHeight: 600,
        fitToView: false,
        width: '60%',
        height: '60%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

</script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hello">
        <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="489px" >
    <div class="post_img" style="width: 500px; height: 260px">
        <a href="#" title="Multiple homepages styles with homepage content manager.">
            <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Razzle-Dazzle-Berry-Cheesecake.jpg&amp;h=240&amp;w=490&amp;zc=1"
                alt="" class="frame img_nofade" width="490" height="240" />
        </a>
    </div>
    <div class="post_header">
        <div class="post_header_h3">
            <h3 class="cufon">
                <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
            </h3>
            <div class="prathyusha" style="float: left; width: 26%;">
                <asp:Label ID="street" runat="server" Text="Street"></asp:Label><br />
                <asp:Label ID="city" runat="server" Text="City"></asp:Label><br />
                <asp:Label ID="zipcode" runat="server" Text="Zipcode"></asp:Label><br />
                
                <asp:Label ID="Label1" runat="server" Text="Find us here :"></asp:Label>
              <!-- <a class="details" data-fancybox-type='iframe' href="http://maps.google.com/?output=embed&amp;f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=London+Eye,+County+Hall,+Westminster+Bridge+Road,+London,+United+Kingdom&amp;hl=lv&amp;ll=51.504155,-0.117749&amp;spn=0.00571,0.016512&amp;sll=56.879635,24.603189&amp;sspn=10.280244,33.815918&amp;vpsrc=6&amp;hq=London+Eye&amp;radius=15000&amp;t=h&amp;z=17"> <img src="images/google-map.png" /></a> -->
                <asp:Label ID="gimg" runat="server" Text="Find us here : "></asp:Label>
            </div>
            <div class="smile" style= "float: left; width: 26%; text-align:right;">
                
                  <label>
                    Phone:
                </label>
                <asp:Label ID="contact" runat="server" Text="Contact" ForeColor="Red" float="left"></asp:Label>
                <br />
                 <label>
                    Service Type:
                </label>
                <asp:Label ID="service1" runat="server" Text="Service" ForeColor="Red" float="left"></asp:Label><br />
                <label>
                    Timings:
                </label>
                <asp:Label ID="timings" runat="server" Text="OfficeTimings" ForeColor="Red" float="left"></asp:Label>
                <br />
                
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <br />
            <h2 class="style">Our Services</h2>
            <br />
   <label>
                Services:
                </label>
                <asp:Label ID="services" runat="server" cssclass="anudeep" Text="services"></asp:Label>
                <br />
            <br />
                 <label>
                    Maximum Capacity:
                </label>
                <asp:Label ID="capacity" runat="server" cssclass="anudeep" Text="capacity"></asp:Label><br /><br />
                <label>
                    Category:
                </label>
                <asp:Label ID="category1" runat="server" cssclass="anudeep" Text="category1"></asp:Label>
                <br />
            <br />
    <label>
                    Additional type of services:
                </label>
                <asp:Label ID="adevents" runat="server" cssclass="anudeep" Text="adevents"></asp:Label>
                <br />
            <br />
                 <label>
                    Bar Service:
                </label>
                <asp:Label ID="bar" runat="server" cssclass="anudeep" Text="bar"></asp:Label><br /><br />
                <label>
                    Catering Service:
                </label>
                <asp:Label ID="catering" runat="server" cssclass="anudeep" Text="catering"></asp:Label>
                <br />
            <br />
    <label>
                    Wedding Cake:
                </label>
                <asp:Label ID="cake" runat="server" cssclass="anudeep" Text="cake"></asp:Label>
                <br />
            <br />
                 <label>
                    Transport Service:
                </label>
                <asp:Label ID="transport" runat="server" cssclass="anudeep" Text="transport"></asp:Label><br /><br />
                <label>
                    Rental Fee per hour:
                </label>
                <asp:Label ID="fee" runat="server" cssclass="anudeep" Text="fee"></asp:Label>
                <br />  
            <br />
             <div class="ultra">
    <asp:Button ID="checkout" runat="server" Text="Checkout" onclick="checkout_Click" CssClass="clean"/>
        <asp:Label ID="details1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

   <asp:Repeater runat="server" ID="category">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>

             <div style="width:100%; min-height: 110px;">
                <asp:Image ID="Image1" runat="server" />
                <div style="float: left; width: 82px">
                    <a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
                        <!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1"
                            alt="" class="frame img_nofade" style="opacity: 1;">-->
                        
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <div class="menu_description" style="float: left; width: 300px">
                    <!-- 
                    <h5 class="cufon"><a href="Menu_Display.aspx?vname=<%# DataBinder.Eval(Container.DataItem, "vname")%>&vzipcode=<%# DataBinder.Eval(Container.DataItem, "vzipcode")%>">
                            <%# DataBinder.Eval(Container.DataItem, "vname")%></a></h5>
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <br class="clear">--->
                    
                </div>
            </div>
            <br class="clear">
            <br>
            
        </ItemTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
           
            </asp:Panel>
        </div>
</asp:Content>
