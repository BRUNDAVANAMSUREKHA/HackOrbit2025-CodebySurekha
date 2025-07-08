<?php ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories of Imports in India</title>
    <link rel="stylesheet" href="/import/public/css/categories.css"> <!-- External CSS File -->
    <link rel="stylesheet" href="../public/css/categories_detail.css"> <!-- External CSS File for Category Details -->
    <link rel="icon" type="image/png" href="/import/public/images/favicon/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="/import/public/images/favicon/favicon.svg" />
    <link rel="shortcut icon" href="/import/public/images/favicon/favicon.ico" />
    <link rel="apple-touch-icon" sizes="180x180" href="/import/public/images/favicon/apple-touch-icon.png" />
    <link rel="manifest" href="/import/public/images/favicon/site.webmanifest" />
    <meta name="apple-mobile-web-app-title" content="MyWebSite" />
</head>
<body>
    <div class="overlay"></div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="../pages/home.php" class="back-link">Back to Home</a>
        <div>Various Categories of Imports in India</div>
    </div>

    <!-- Category Cards Generated with Manual Image Paths -->
    <div class="category-container">
        <?php
            $categories = [
                "Agricultural Products", "Automobiles and Parts", "Aviation and Aerospace", "Base Metals", 
                "Beverages (Alcoholic and Non-Alcoholic)", "Chemicals (Organic, Inorganic, Specialty)", 
                "Clothing & Textiles", "Cosmetics & Personal Care Products", "Electrical Machinery & Equipment", 
                "Energy Products (Oil, Gas, Coal, etc.)", "Fertilizers", "Fish and Seafood", "Footwear", 
                "Furniture and Home Goods", "Gems & Jewelry", "Glass and Ceramics", "Iron & Steel", 
                "Leather & Leather Products", "Machinery (Industrial, Electrical, etc.)", 
                "Medical & Pharmaceutical Products"
            ];

            $imagePaths = [
                "../public/images/categories/img1.png", "../public/images/categories/img2.png", "../public/images/categories/img3.jpg",
                "../public/images/categories/img4.jpg", "../public/images/categories/img5.png", "../public/images/categories/img6.png",
                "../public/images/categories/img7.png", "../public/images/categories/img8.png", "../public/images/categories/img9.png",
                "../public/images/categories/img10.png", "../public/images/categories/img11.png", "../public/images/categories/img12.png",
                "../public/images/categories/img13.png", "../public/images/categories/img14.png", "../public/images/categories/img15.png",
                "../public/images/categories/img16.png", "../public/images/categories/img17.png", "../public/images/categories/img18.png",
                "../public/images/categories/img19.png", "../public/images/categories/img20.png"
            ];

            foreach ($categories as $index => $category) {
                $imagePath = $imagePaths[$index];
                echo "<div class='card'>";
                echo "    <div class='card-inner'>";
                echo "        <div class='card-front'>";
                echo "            <img src='$imagePath' alt='$category'>";
                echo "            <div class='semi-circle'>$category</div>";
                echo "        </div>";
                echo "    </div>";
                echo "</div>";
            }
        ?>
    </div>

    <script src="../public/js/categories.js"></script> <!-- External JS File -->
    <?php?>
</body>
</html>