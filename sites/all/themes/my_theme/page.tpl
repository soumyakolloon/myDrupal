<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title><?php print $head_title ?></title>
  <?php print $head; ?>
  <?php print $styles ?>
  <?php print $scripts ?>

  <!--[if lte IE 6]> <style type="text/css" media="all">@import "<?php print $directory?>/css/ie6.css";</style><![endif]-->
</head>

<body>
<div id="header">
	<a href="/">
    <img src="/<?php print $directory?>/img/header-new.png" height="62" width="255" alt="<?php print $site_name?>" /></a>

	
</div>

<div id="holder">
<div id="sunflower"></div>

<div id="sidebarfactory">
	<div id="sidebar">

      <?php if ($primary_links): ?><?php print theme('links', $primary_links); ?><?php endif; ?>
      <?php if ($sidebar): ?>
        <?php print $sidebar; ?>
      <?php endif; ?>

	</div>
	<div id="main">
        <?php if ($title): ?><h1 id="title"><?php print $title; ?></h1><?php endif; ?>

        <?php if ($tabs): ?><div class="tabs"><?php print $tabs; ?></div><?php endif; ?>
        <?php print $help; ?>
        <?php if ($show_messages && $messages): ?><?php print $messages; ?><?php endif; ?>
	
      <?php print $content; ?>

      <?php if ($content_bottom): ?><?php print $content_bottom; ?><?php endif; ?>

      <!-- content -->

	</div>
	<div id="footer">
      <?php if ($footer): ?><?php print $footer; ?><?php endif; ?>
		<!-- footer -->
	</div>

  <?php print $closure; ?>

</div>

</div>

</body>
</html>