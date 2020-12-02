<?xml version="1.0" encoding="UTF-8"?> 
<?xml-stylesheet type="text/css" href="../style.css"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<style>
    html, body {
        height: 100%;
        margin: 0;
    }
    .offer-table{
    width: 80%;
    margin: auto;
    margin-top: 4%;
    }
    table, th, td {

        border-collapse: collapse;
        padding: 15px;
        text-align: center;
    }
    td{
        background-color: rgb(203, 224, 243);
    }
    tr{
        border: 1px solid white;
    }
    th{
        background-color: #0093E9;
        color: white;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: medium;
    }
    .header{
        display: flex;
        justify-content: space-around;
        margin-bottom: 5px;
        background-color: #0093E9;
        background-image: linear-gradient(160deg, #0093E9 0%, #468eaa 100%);
    }
    .heading{
        font-size: xx-large;
        text-align: center;
        color: #0093E9;
        padding: 20px;
        margin: auto;
        margin-left: 75;
    }
    .header-buttons{
        margin: auto;
        height: 75px;
        display: flex;
        margin-left: 350px;
        justify-content: space-around;
    }
    .header_btn_text{
        text-align: center;
        margin-top: 30%;
        font-size: 13pt;
    }

    .header-button{

        color: white;
        height: 100%;
        width: 100px;
        font-size: medium;
        margin-right: 2%;
    }
    .header-button:hover{
        background-color: #0093E9;
        border-color: 0093E9;
    }
    .header-button:focus{
        outline: 0093E9;
    }
    a:link {
        text-decoration: none;
    }
    .navbar{
    width: 100%;
    height: 10%;
    line-height: 70px;
    background: #333;
    border-bottom: 2px solid red;
    }

    .logo{
        width: 60px;
        padding-top: 10px;
        padding-bottom: 10px;
        margin-left: 50px;
        float: left;
    }
    footer {
        position: fixed;
        bottom: 0;
        background-color: #333;
        color: white;
        width: 100%;
        text-align: center;
        line-height: 10px;
    }
</style>
    <body>
        <div class ="header">
            <img src ="../images/icon.png" alt ="Vilgax" class = "logo"></img>   
            <div class="heading">
                Vilgax E-Mobile Store
            </div>
            <div class="header-buttons">
                <a href="../Pages/home.html" class="header-button">
                    <div class="header_btn_text">
                        Home
                    </div>
                </a>
                
                <a href="../Pages/Cart.html" class="header-button">
                    <div class="header_btn_text">
                        Cart
                    </div>
                </a>
                <a href="../Pages/Offers.html" class="header-button">
                    <div class="header_btn_text">
                        Offers
                    </div>
                </a>
                <a href="../Pages/Frameset/ContactUs.html" class="header-button">
                    <div class="header_btn_text">
                        Contact Us
                    </div>
                </a>
                <a href="../Pages/Login.html" class="header-button">
                    <div class="header_btn_text">
                        Login
                    </div>
                </a>
            </div>
        </div>
        <div style="text-align:center">
            <h2>Today Offers</h2> 
            <table class="offer-table">
                <tr > 
                    <th>Phone</th>
                    <th>Discount ( % )</th>
                    <th>MRP ( Rs. )</th>
                    <th>Offer Price ( Rs. )</th>
                </tr>
                <xsl:for-each select="offers/offer">
                <tr>
                    <td><xsl:value-of select="model"/></td>
                    <td><xsl:value-of select="discount"/></td>
                    <td><xsl:value-of select="mrp"/></td>
                    <td><xsl:value-of select="offer_price"/></td>
                </tr> 
                </xsl:for-each>
            </table> 
        </div>
    </body>
    <footer >
        <p style="text-align: center;">
          Vilgax Stores
        </p>
        <p style="text-align: center;">
          <a href="mailto:rv7685@srmist.edu.in">Mail us
          </a>
        </p>
      </footer>
</html> 
</xsl:template>
</xsl:stylesheet>