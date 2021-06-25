<?php
include('h.php');
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
//2. query ข้อมูลจากตาราง tb_admin:
$query = "SELECT * FROM tbl_member ORDER BY member_id ASC" or die("Error:" . mysqli_error($LInk));
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
$row_am = mysqli_fetch_assoc($result);
?>

<script>
  $(document).ready(function() {
    $('#example1').DataTable({
      "aaSorting": [
        [0, 'ASC']
      ],
      //"lengthMenu":[[20,50, 100, -1], [20,50, 100,"All"]]
    });
  });
</script>

<table border="2" class="display table table-bordered" id="example1" align="center">
  <thead>
    <tr class="info">
      <td>Id</td>
      <td>m_User</td>
      <td>m_Name</td>
      <td>m_Pass</td>
      <td>m_Email</td>
      <td>m_Address</td>
      <td>Edit</td>
      <td>Delete</td>
    </tr>
  </thead>
  <?php do { ?>

    <tr>
      <td><?php echo $row_am['member_id']; ?></td>
      <td><?php echo $row_am['m_user']; ?></td>
      <td><?php echo $row_am['m_name']; ?></td>
      <td><?php echo $row_am['m_pass']; ?></td>
      <td><?php echo $row_am['m_email']; ?></td>
      <td><?php echo $row_am['m_address']; ?></td>
      <td><a href="member.php?act=edit&ID=<?php echo $row_am['member_id']; ?>" class="btn btn-warning btn-md"> แก้ไข </a> </td>
      <td><a href="member_del_db.php?ID=$row[0]?ID=$row[0]<?php echo $row_am['member_id']; ?>" class='btn btn-danger btn-xs' onclick="return confirm('ยืนยันที่จะลบข้อมูลสมากชิก')">ลบ</a> </td>
    </tr>

  <?php } while ($row_am =  mysqli_fetch_assoc($result)); ?>

</table>