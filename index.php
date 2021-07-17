<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shreemit Advance Blood Care Unit</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/modern-business.css" rel="stylesheet">
    <style>
        .navbar-toggler {
            z-index: 1;
        }

        @media (max-width: 576px) {
            nav>.container {
                width: 100%;
            }
        }

        .carousel-item.active,
        .carousel-item-next,
        .carousel-item-prev {
            display: block;
        }
    </style>

</head>

<body>

    <!-- Navigation -->
    <?php include('includes/header.php'); ?>
    <?php include('includes/slider.php'); ?>

    <!-- Page Content -->
    <div class="container">

        <h1 class="my-4"> <b><i>Welcome to Shreemit Advance Blood Care Unit</i></b> </h1>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header">Facts about Donors</h4>

                    <p class="card-text" style="padding-left:2%">

                    <ul>
                        <li>The number one reason donors say they give blood is because they "want to help others.</li>
                        <li>One donation can help save the lives of up to three people.</li>
                        <li>Only 7 percent of people in India have O-negative blood type. O-negative blood type donors are universal donors as their blood can be given to people of all blood types.</li>
                        <li>0.4 percent of people have AB-blood type. AB-type blood donors are universal donors of plasma, which is often used in emergencies, for newborns and for patients requiring massive transfusions.</li>
                    </ul>

                    </p>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header">Facts about Blood Needs</h4>

                    <p class="card-text" style="padding-left:2%">

                    <ul>
                        <li>Every year our nation requires about 5 Crore units of blood, out of which only a meager 2.5 Crore units of blood are available.</li>
                        <li>A total of 30 million blood components are transfused each year.</li>
                        <li>Sickle cell patients can require frequent blood transfusions throughout their lives.</li>
                        <li>More than 1 million new people are diagnosed with cancer each year. Many of them will need blood, sometimes daily, during their chemotherapy treatment.</li>
                    </ul>

                    </p>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header">Facts about Blood Donation Process</h4>

                    <p class="card-text" style="padding-left:2%">

                    <ul>
                        <li>Donating blood is a safe process. A sterile needle is used only once for each donor and then discarded.</li>
                        <li>The actual blood donation typically takes less than 10-12 minutes. The entire process, from the time you arrive to the time you leave, takes about an hour and 15 min.</li>
                        <li>All donated blood is tested for HIV, hepatitis B and C, syphilis and other infectious diseases before it can be transfused to patients.</li>

                    </ul>
                    </p>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <h2><b>Some of the frequent Donors</b></h2>

        <div class="row">
            <?php
            $status = 1;
            $sql = "SELECT * from tblblooddonars where status=:status order by rand() limit 6";
            $query = $dbh->prepare($sql);
            $query->bindParam(':status', $status, PDO::PARAM_STR);
            $query->execute();
            $results = $query->fetchAll(PDO::FETCH_OBJ);
            $cnt = 1;
            if ($query->rowCount() > 0) {
                foreach ($results as $result) { ?>

                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top img-fluid" src="images/blood-donor (2).jpg" alt=""></a>
                            <div class="card-block">
                                <h4 class="card-title"><a href="#"><?php echo htmlentities($result->FullName); ?></a></h4>
                                <p class="card-text"><b> Gender :</b> <?php echo htmlentities($result->Gender); ?></p>
                                <p class="card-text"><b>Blood Group :</b> <?php echo htmlentities($result->BloodGroup); ?></p>

                            </div>
                        </div>
                    </div>

            <?php }
            } ?>





        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-6">
                <h2><b>BLOOD GROUPS</b></h2>
                <p> <i>Blood group of any human being will mainly fall under one of these groups.</i></p>
                <ul>


                    <li>A +ve or A -ve</li>
                    <li>B +ve or B -ve</li>
                    <li>AB +ve or AB -ve</li>
                    <li>O +ve or O -ve</li>

                </ul>
                <p><b><i>A proper, healthy & balanced diet ensures a successful blood donation, and also makes us feel better!</i></b></p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="images/blood-donor (3).jpg" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="row mb-4">
            <div class="col-md-8">
                <h4><b>Universal Donor and Recipient</b></h4>
                <p>
                    The most common blood type is 'O', followed by type 'A'.

                    Type 'O' individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type 'AB' blood are called "universal recipients" because they can receive blood of any type. The rarest blood groups are 'O -ve' and 'AB -ve'.
                </p>
            </div>
            <div class="col-md-4">
                <a class="btn btn-outline-primary" href="become-donar.php"> <i>Save a life!</i><b> Become a Donor now</b></a>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include('includes/footer.php'); ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>