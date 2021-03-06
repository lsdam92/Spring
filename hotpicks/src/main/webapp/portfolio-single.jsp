<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>
<link rel="stylesheet" type="text/css" href="resources/style.css" media="all" />
<link rel="stylesheet" media="all" href="resources/style/css/prettyPhoto.css" />
<link rel="stylesheet" media="all" href="resources/style/type/folks.css" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="resources/style/css/ie7.css" media="all" />
<![endif]-->
<script type="text/javascript" src="resources/style/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="resources/style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="resources/style/js/scripts.js"></script>
<script type="text/javascript" src="resources/style/js/jquery.prettyPhoto.js"></script>
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
              <li><a href="portfolio-1.jsp" class="selected">Portfolio</a>
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
              <li><a href="contact.jsp">Contact</a></li>
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
    <div id="portfolio-single">
      <div class="image"> <img src="resources/style/images/art/single1.jpg" alt="" /> <img src="resources/style/images/art/single2.jpg" alt="" /> </div>
      <div class="text">
        <h3>Sapien tortor vitae semil egestas, velit at dictum</h3>
        <p>Quisque adipiscing tortor ac eros pulvinar rutr. Praesent egestas, velit at dictum commodo, lorem dolor placerat lacus, nec tempus sapien tortor vitae sem. Fusce ac sapien odio, sit amet rhoncus urna. </p>
        <ul>
          <li>Nunc faucibus lacus vel sapieno.</li>
          <li>Sed eros diam, varius adipiscing.</li>
        </ul>
        <a href="#">http://project-name.com</a>
        <div class="divider3"></div>
        <a href="#" class="p-project">&laquo; Previous Project</a> <a href="#" class="n-project">Next Project &raquo;</a> </div>
    </div>
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
<script type="text/javascript">
		$(document).ready(function(){
			$("#gallery a[rel^='prettyPhoto']").prettyPhoto({theme:'light_square',autoplay_slideshow: false});
		});
		
		
		
		$(function() {
            var offset = $(".text").offset();
            var topPadding = 15;
            $(window).scroll(function() {
                if ($(window).scrollTop() > offset.top) {
                    $(".text").stop().animate({
                        marginTop: $(window).scrollTop() - offset.top + topPadding
                    });
                } else {
                    $(".text").stop().animate({
                        marginTop: 0
                    });
                };
            });
        });
</script>
</body>
</html>