<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>
<link rel="stylesheet" type="text/css" href="resources/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="resources/contact/style.css" media="all" />
<link rel="stylesheet" media="all" href="resources/style/type/folks.css" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="resources/style/css/ie7.css" media="all" />
<![endif]-->
<script type="text/javascript" src="resources/style/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="resources/style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="resources/style/js/scripts.js"></script>
<script type="text/javascript" src="resources/style/js/jquery.infieldlabel.min.js"></script>
<script type="text/javascript" src="resources/style/js/twitter.min.js"></script>
<script type="text/javascript">
	$(function(){ $("label").inFieldLabels(); });
</script>
<script type="text/javascript">
getTwitters('twitter', {
        id: 'elemisdesign', 
        count: 1, 
        enableLinks: true, 
        ignoreReplies: false,
        template: '<span class="twitterPrefix"><span class="twitterStatus">%text%</span>',
        newwindow: true
});
</script>
<script type="text/javascript">  
        
$(document).ready(function() {
	
    $("#ajax-contact-form").submit(function() {
        $('#load').append('<center><img src="ajax-loader.gif" alt="Currently Loading" id="loading" /></center>');

        var fem = $(this).serialize(),
			note = $('#note');
	
        $.ajax({
            type: "POST",
            url: "contact/contact.php",
            data: fem,
            success: function(msg) {
				if ( note.height() ) {			
					note.slideUp(500, function() { $(this).hide(); });
				} 
				else note.hide();

				$('#loading').fadeOut(300, function() {
					$(this).remove();

					// Message Sent? Show the 'Thank You' message and hide the form
					result = (msg === 'OK') ? '<div class="success">Your message has been sent. Thank you!</div>' : msg;

					var i = setInterval(function() {
						if ( !note.is(':visible') ) {
							note.jsp(result).slideDown(500);
							clearInterval(i);
						}
					}, 40);    
				}); // end loading image fadeOut
            }
        });

        return false;
    });
});


</script>
</head>
<body>
<div id="container"> 
  <!-- Begin Header Wrapper -->
  <div id="page-top">
    <div id="header-wrapper"> 
      <!-- Begin Header -->
      <div id="header">
        <div id="logo"><a href="index.jsp"><img src="resources/style/images/logo.png" alt="Delphic" /></a></div>
        <!-- Logo --> 
        <!-- Begin Menu -->
        <div id="menu-wrapper">
          <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp">Home</a>
                <ul>
                  <li><a href="index.jsp">Home with Cycle</a></li>
                  <li><a href="index-2.jsp">Home with Columns</a></li>
                  <li><a href="index-3.jsp">Home with Services</a></li>
                  <li><a href="index-4.jsp">Home with Piecemaker</a></li>
                </ul>
              </li>
              <li><a href="blog-1.jsp">Blog</a>
                <ul>
                  <li><a href="blog-1.jsp">Blog</a></li>
                  <li><a href="blog-2.jsp">News</a></li>
                  <li><a href="blog-single.jsp">Single Blog Post</a></li>
                </ul>
              </li>
              <li><a href="portfolio-1.jsp">Portfolio</a>
                <ul>
                  <li><a href="portfolio-1.jsp">Portfolio with Lightbox</a></li>
                  <li><a href="portfolio-2.jsp">Portfolio with Details</a></li>
                  <li><a href="portfolio-single.jsp">Single Portfolio Post</a></li>
                </ul>
              </li>
              <li><a href="services.jsp">Services</a></li>
              <li><a href="page-tabs-toggle.jsp">Features</a>
                <ul>
                  <li><a href="page-tabs-toggle.jsp">Tabs &amp; Toggle</a></li>
                  <li><a href="page-carousel.jsp">Carousel</a></li>
                  <li><a href="blog-2.jsp">News</a></li>
                  <li><a href="services.jsp">Services</a></li>
                  <li><a href="page-custom.jsp">Custom Page</a></li>
                  <li><a href="page-buttons.jsp">Buttons</a></li>
                  <li><a href="styles.jsp">Columns &amp; Tables</a></li>
                </ul>
              </li>
              <li><a href="contact.jsp" class="selected">Contact</a></li>
            </ul>
          </div>
        </div>
        <!-- End Menu -->
      </div>
      <!-- End Header --> 
    </div>
  </div>
  <!-- End Header Wrapper --> 
  
  <!-- Begin Wrapper -->
  <div id="wrapper"> 
    
    <!-- Begin Content -->
    <div class="content">
      <h3>Delphic Contact Information</h3>
      <p>Maecenas vehicula condimentum consequat. Ut suscipit ipsum eget leo convallis feugiat upsoyut fermentum leo auctor. In consequat turpis at nisiper otue vestibulum at bibendum lectus pulvinar. Integer pulvinar elit tincidunt quam faucibus eget porta est blandit.</p>
      <br />
      <!-- Begin Form -->
      <div class="contact-left">
        <div id="contact-form"> 
          
          <!--begin:notice message block-->
          <div id="note"></div>
          <!--begin:notice message block-->
          
          <form id="ajax-contact-form" method="post" action="javascript:alert('success!');">
            <div class="labels">
              <p>
                <label for="name">Name</label>
                <br />
                <input class="required inpt" type="text" name="name" id="name" value="" />
              </p>
              <p>
                <label for="email">E-Mail</label>
                <br />
                <input class="required inpt" type="text" name="email" id="email" value="" />
              </p>
            </div>
            <div class="comments">
              <p>
                <textarea class="textbox" name="message" rows="6" cols="30"></textarea>
              </p>
              <br />
              <p>
                <label for="answer">5+1=?</label>
                <br />
                <input class="required inpt" type="text" name="answer" id="answer" value="" />
              </p>
            </div>
            <label id="load" style="display:none"></label>
            <input id="submit-button" class="button gray stripe" type="submit" name="submit" value="Send Message" />
          </form>
        </div>
        <!-- End Form --> 
      </div>
      <div class="contact-right">
        <div class="one-half">
          <h4>Head Office</h4>
          <p>Moon Avenue No:11/21 <br />
            Planet City, Earth <br />
            <br />
            <span class="highlight3">Fax:</span> +555 797 534 01 <br />
            <span class="highlight3">Tel:</span> +555 636 646 62 </p>
        </div>
        <div class="one-half last">
          <h4>Brach Office</h4>
          <p>Moon Avenue No:11/21 <br />
            Planet City, Earth <br />
            <br />
            <span class="highlight3">Fax:</span> +555 797 534 01 <br />
            <span class="highlight3">Tel:</span> +555 636 646 62 </p>
        </div>
        <div class="clear"></div>
        <br />
        <iframe width="400" height="188" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps/ms?hl=en&amp;ie=UTF8&amp;msa=0&amp;msid=207283647702034942388.00049e0aeaa1c22ac0897&amp;ll=41.035082,29.001846&amp;spn=0.044025,0.143852&amp;z=12&amp;output=embed"></iframe>
      </div>
      <div class="clear"></div>
      <div class="divider"></div>
      <div id="twitter-wrapper">
        <div id="twitter"></div>
        <span class="username">Follow <a href="http://twitter.com/elemisdesign">elemisdesign</a></span> </div>
      <div class="clear"></div>
    </div>
    <!-- End Content --> 
    
  </div>
  <!-- End Wrapper -->
  
  <div class="clearfix"></div>
  <div class="push"></div>
</div>

<!-- Begin Footer -->
<div id="footer-wrapper">
  <div id="footer">
    <div id="footer-content"> 
      
      <!-- Begin Copyright -->
      <div id="copyright">
        <p>© Copyright 2011 Delphic | Creative Portfolio Template</p>
      </div>
      <!-- End Copyright --> 
      
      <!-- Begin Social Icons -->
      <div id="socials">
        <ul>
          <li><a href="#"><img src="resources/style/images/icon-rss.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-twitter.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-dribble.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-tumblr.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-flickr.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-facebook.png" alt="" /></a></li>
        </ul>
      </div>
      <!-- End Social Icons --> 
      
    </div>
  </div>
</div>
<!-- End Footer -->
</body>
</html>