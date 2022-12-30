<?php
require "inc/connection.php";
require "inc/adminauth.php";



$q = "select articles.*,categories.name as catname,users.name as username from articles,categories,users where articles.category_id = categories.id and articles.user_id = users.id";
$a = $conn->query($q);

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
<h3>Article management</h3>
<table class="table table-striped">
    <tr>
        <th>ID</th>
        <th>Category</th>
        <th>Title</th>
        <th>Description</th>
        <th>Image</th>
        <th>Active</th>
        <th>User</th>
        <th>Tags</th>
        <th>Create time</th>
        <th>Delete Time</th>
        <th>Action</th>
    </tr>
    <?php
    $rec = "";
    while($row = $a->fetch_assoc()){
        $rec .= "<tr>";
        $rec .= "<td>".$row['id']."</td>";
        $rec .= "<td>".$row['catname']."</td>";
        $rec .= "<td>".$row['title']."</td>";
        $rec .= "<td>".$row['description']."</td>";
        $rec .= "<td><img width='120px' src='assets/aimages/".$row['images']."'/></td>";
        $rec .= "<td>".$row['active']."</td>";
        $rec .= "<td>".$row['username']."</td>";
        $rec .= "<td>".$row['tags']."</td>";
        $rec .= "<td>".$row['created_at']."</td>";
        $rec .= "<td>".$row['deleted_at']."</td>";
        $rec .= "<td> <a href='article-edit.php?id=".$row['id']."'><i class='bi bi-pencil-square'></i></a> <a href='article-delete.php?id=".$row['id']."' onclick=\"return confirm('Are you sure?')\"><i class='bi bi-trash'></i></a></td>";
        $rec .= "</tr>";
    }
    echo $rec;
    ?>
</table>
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
            if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
        </script>
    </body>
</html>
