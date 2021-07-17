    <nav class="navbar fixed-top navbar-toggleable-md navbar-inverse bg-inverse">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarExample" aria-controls="navbarExample" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="container">
            <a class="navbar-brand" href="index.php"><b>Shreemit Advance Blood Care Unit</b></a>
            <div class="collapse navbar-collapse" id="navbarExample">
                <ul class="navbar-nav ml-auto">



                    <li class="nav-item">
                        <a class="nav-link" href="index.php"> <button type="button" class="btn btn-outline-secondary">Home</button></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="page.php?type=aboutus"> <button type="button" class="btn btn-outline-primary">About us</button></a>
                    </li>

                    <!-- Dropdown-->
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-info">Blood Donation</button>
                        <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="page.php?type=donor">Why become a Donor</a>
                            <a class="dropdown-item" href="become-donar.php">Become a Donor</a>
                            <a class="dropdown-item" href="search-donor.php">Search Blood</a>
                            <a class="dropdown-item" href="contact.php">Contact us</a>
                        </div>
                    </div>

                    <li class="nav-item">
                        <a class="nav-link" href="./admin/index.php" target="_blank"> <button type="button" class="btn btn-outline-warning">Admin Login</button></a>
                    </li>




                </ul>
            </div>
        </div>
    </nav>