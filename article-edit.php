<?php
require "inc/connection.php";
require "inc/adminauth.php";
//update article
if(isset($_POST['update'])){
$id = $_POST['id'];
$title = $conn->escape_string($_POST['atitle']);
$des = $conn->escape_string($_POST['adesc']);
// $des = $files['aimage'];
$active = $_POST['active'];
$cat = $_POST['acat'];
$tag = $_POST['atag'];
$update = "UPDATE `articles` set `category_id`='".$cat."',`title`='".$title."',`description`='".$des."',`active`='".$active."',`tags`='".$tag."' WHERE id='".$id."' limit 1";

$conn->query($update);
if($conn->affected_rows){
    header("location:article-all.php");
}

}

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $s = "select * from articles where id='".$id."' limit 1";
    $r=$conn->query($s);
    $row = $r->fetch_assoc();
}
/* if(isset($_POST['submit'])){
    $title = $conn->escape_string($_POST['atitle']);
    $desc = $conn->escape_string($_POST['adesc']);
    $cat = $_POST['acat'];
    $tag = $_POST['atag'];
    $image = null;
    if(isset($_FILES['aimage'])){
        $im = $_FILES['aimage'];
        $image = uniqid().".png";
        move_uploaded_file($_FILES['aimage']['tmp_name'],'assets/aimages/'.$image);
    }
    $iq = "insert into articles values(null,'".$cat."','".$title."','".$desc."','".$image."','1','".$_SESSION['userid']."','".$tag."','',null)";
    $conn->query($iq);
    if($conn->affected_rows){
        $message = "Article Added";
    }
} */



$q = "select * from categories where 1";
$r = $conn->query($q);

?>

<?php require "inc/header.php"; ?>
    </head>
    <body class="sb-nav-fixed">
<?php require "inc/topnav.php"; ?>
        <div id="layoutSidenav">
<?php require "inc/leftnav.php"; ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Article <?= $message??"";?></li>
                        </ol>

<!-- content -->
<form class="row g-3 needs-validation" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $id ?>">
<div class="col-md-12">
    <label for="atitle" class="form-label">Title</label>
    <input type="text" class="form-control" name="atitle" id="atitle" value="<?= $row['title']; ?>" required>
    <div class="valid-feedback">
      Looks good!
    </div>
    <div class="invalid-feedback">
      Required
    </div>
  </div>
<div class="col-md-12">
    <label for="adesc" class="form-label">Description</label>
    <textarea name="adesc" id="adesc" class="form-control"><?=$row['description']; ?></textarea>
    <div class="valid-feedback">
      Looks good!
    </div>
    <div class="invalid-feedback">
      Required
    </div>
  </div>
  <div class="col-md-6">
    <label for="aimage" class="form-label">Image</label>
    <input type="file" class="form-control" id="aimage" name="aimage">
    <div class="valid-feedback">
      Looks good!
    </div>
    <div class="invalid-feedback">
      Required
    </div>
  </div>
  <div class="col-md-6">
    <img class="img-fluid" src="assets/aimages/<?= $row['images']  ?>" alt="">
  </div>
  <div class="col-md-12">
    <label for="active" class="form-label">Active</label>
    <select name="active" id="active" class="form-control">
        <option value="1" <?= $row['active']=="1"?"selected":""; ?>>Active</option>
        <option value="0" <?= $row['active']=="0"?"selected":""; ?>>InActive</option>
    </select>

  </div>
  
  <div class="col-md-12">
    <label for="acat" class="form-label">Category</label>
    <select class="form-select" name="acat" id="acat">
    <option selected disabled value="">Choose...</option>
    <?php
while($c = $r->fetch_assoc()){
    $selected = $c['id']==$row['category_id']?"selected":"";
    echo "<option value='".$c['id']."' ".$selected.">".$c['name']."</option>";
}

?>
    </select>
    <div class="valid-feedback">
      Looks good!
    </div>
    <div class="invalid-feedback">
      Required
    </div>
  </div>
  <div class="col-md-12">
    <label for="atag" class="form-label">Tags</label>
    <input type="text" class="form-control" id="atag" name="atag" value="<?=$row['tags'] ?>">
    <div class="valid-feedback">
      Looks good!
    </div>
    <div class="invalid-feedback">
      Required
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-outline-primary" type="submit" name="update">Update Article</button>
  </div>
</form>
<!--  content-end-->
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="assets/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="assets/js/scripts.js"></script>
        <script>
           // Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
        </script>
        <script>
            if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
        </script>
    </body>
</html>
