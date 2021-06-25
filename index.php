<!DOCTYPE html>
<html>

<head>
  <?php include('h.php'); ?>

  <head>

  <body>
    <div class="container">
      <?php include('navbar.php'); ?>
      <p></p>
      <div class="row">
        <div class="col-md-2">
          สวัสดี คุณ <?php echo $a_name; ?>
          <!-- Left side column. contains the logo and sidebar -->
          <?php include('menu_left.php'); ?>
        </div>
        <div class="col-md-10">
          <?php include('show_product.php'); ?>
        </div>
      </div>
    </div>
    </div>
  </body>

</html>