<html>
<?php echo $this->partial('partials/header'); ?>


<body>

	<div class="body clearfix">
	<h1 style = "text-align:center;">
Georgina Through The Years
</h1>


  <section class="regular slider">
 

  </section>

  <section class="center slider">
   <div>
   <a href ="/images/slide1.jpg">
<img src="/images/slide1.jpg">
    </a>
    </div>
    <div style="margin-left:8px;">
    </div>
    <div>
    <a href ="/images/slider3.jpg">
      <img src="/images/slider3.jpg">  
      </a>
    </div>
     <div style="margin-left:8px;">
    </div>
    <div>
   <img src="/images/slider4.jpg">
    </div>
     <div style="margin-left:8px;">
    </div>
    <div>
    <img src="/images/slider5400x533.jpg">
    </div>
     <div style="margin-left:8px;">
    </div>
    <div>
      <img src="/images/slider6400x532.jpg">
    </div>
     <div style="margin-left:8px;">
    </div>

  </section>
<!-- array -->
  <section class="variable slider">
<?php foreach ($post as $item) { ?>

 <div>
      <img src="./images/uploads/<?php echo $item->file_name; ?>">
 

</div>
<?php } ?>
  </section>
<p>
<!--
<form action="../photogallery/upload" method="post" enctype="multipart/form-data" >
<input type="file" name="file" />
<button type="submit" name="btn-upload">upload</button>
-->
</p>
  <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="./js/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
    });
  </script>

	
	       
<?php echo $this->partial('partials/footer'); ?>
</div>
</body>
</html>