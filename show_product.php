<?php
     $query_product = "SELECT * FROM tbl_product ORDER BY p_id ASC";
     $result_pro =mysqli_query($con, $query_product ) or die("Error:" . mysqli_error($LInk));
    //  echo( $query_product );
    //  exit()


?>
<div class="row">
<?php foreach ($result_pro as $row_pro) { ?>

    <div class="card text-white bg-secondary mb-3" style="width: 18rem;">
    <img src="p_img/<?php echo $row_pro['p_img']; ?>" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><?php echo $row_pro['p_name']; ?></h5>
        <p class="card-text"><?php echo $row_pro['p_detail']; ?> </p>
        <a href="cart.php?p_id=$row[p_id]&act=add'" class="btn btn-primary">Buy</a>
       
    </div>
</div>
&nbsp;


<?php } ?>

   
</div>