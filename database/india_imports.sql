-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS india_imports;
USE india_imports;

-- States table
CREATE TABLE states (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL,
    state_description TEXT,
    state_image VARCHAR(255),
    import_volume DECIMAL(15,2),
    top_import_category VARCHAR(100),
    import_growth_rate DECIMAL(5,2)
);

-- Categories table
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    category_description TEXT,
    category_image VARCHAR(255),
    annual_import_value DECIMAL(15,2),
    main_source_countries TEXT,
    import_growth_rate DECIMAL(5,2)
);

-- Product imports table (linking states and categories)
CREATE TABLE product_imports (
    import_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    state_id INT,
    category_id INT,
    import_value DECIMAL(15,2),
    origin_country VARCHAR(100),
    import_year INT,
    import_volume DECIMAL(15,2),
    FOREIGN KEY (state_id) REFERENCES states(state_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Import reasons table
CREATE TABLE import_reasons (
    reason_id INT AUTO_INCREMENT PRIMARY KEY,
    reason_title VARCHAR(255) NOT NULL,
    reason_description TEXT,
    reason_image VARCHAR(255)
);

-- Import issues table
CREATE TABLE import_issues (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    issue_title VARCHAR(255) NOT NULL,
    issue_description TEXT,
    issue_image VARCHAR(255)
);

-- Major imports table
CREATE TABLE major_imports (
    import_id INT AUTO_INCREMENT PRIMARY KEY,
    import_name VARCHAR(255) NOT NULL,
    origin_countries TEXT,
    imported_states TEXT,
    import_reason TEXT,
    import_image VARCHAR(255)
);

-- Import reduction strategies table
CREATE TABLE import_reduction_strategies (
    strategy_id INT AUTO_INCREMENT PRIMARY KEY,
    strategy_title VARCHAR(255) NOT NULL,
    strategy_description TEXT,
    strategy_image VARCHAR(255)
);

-- Sample data for states
INSERT INTO states (state_name, state_description, state_image, import_volume, top_import_category, import_growth_rate) VALUES
('Andhra Pradesh', 'Andhra Pradesh is a major importer of electronic goods and machinery.', '../public/images/states/img1.png', 1250000000.00, 'Electronic Goods', 5.2),
('Arunachal Pradesh', 'Arunachal Pradesh primarily imports consumer goods and electronics.', '../public/images/states/img2.png', 450000000.00, 'Consumer Goods', 3.1),
('Assam', 'Assam imports significant amounts of machinery and electronic equipment.', '../public/images/states/img3.png', 780000000.00, 'Machinery', 4.3),
('Bihar', 'Bihar mainly imports agricultural equipment and fertilizers.', '../public/images/states/img4.png', 620000000.00, 'Agricultural Products', 2.8),
('Chhattisgarh', 'Chhattisgarh imports mining equipment and machinery.', '../public/images/states/img5.png', 890000000.00, 'Machinery', 3.6),
('Goa', 'Goa is a significant importer of tourism-related goods and luxury items.', '../public/images/states/img6.png', 560000000.00, 'Luxury Goods', 6.7),
('Gujarat', 'Gujarat is one of the largest importers with a focus on petroleum and chemicals.', '../public/images/states/img7.png', 4500000000.00, 'Petroleum Products', 7.2),
('Haryana', 'Haryana imports automotive parts and electronic components.', '../public/images/states/img8.png', 2100000000.00, 'Automobiles and Parts', 5.9),
('Himachal Pradesh', 'Himachal Pradesh imports machinery for its pharmaceutical industry.', '../public/images/states/img9.png', 680000000.00, 'Pharmaceuticals', 3.4),
('Jharkhand', 'Jharkhand imports mining equipment and industrial machinery.', '../public/images/states/img10.png', 920000000.00, 'Industrial Equipment', 2.9),
('Karnataka', 'Karnataka is a major importer of electronic components and IT hardware.', '../public/images/states/img11.png', 3800000000.00, 'Electronic Goods', 8.3),
('Kerala', 'Kerala imports gold, spices, and various consumer goods.', '../public/images/states/img12.png', 1680000000.00, 'Precious Metals', 4.1),
('Madhya Pradesh', 'Madhya Pradesh imports agricultural machinery and fertilizers.', '../public/images/states/img13.png', 1250000000.00, 'Agricultural Products', 3.7),
('Maharashtra', 'Maharashtra is the largest importer, focusing on petroleum, machinery, and electronics.', '../public/images/states/img14.png', 6800000000.00, 'Petroleum Products', 6.8),
('Manipur', 'Manipur imports consumer goods and textiles from neighboring countries.', '../public/images/states/img15.png', 320000000.00, 'Textiles', 2.6),
('Meghalaya', 'Meghalaya imports industrial equipment and consumer goods.', '../public/images/states/img16.png', 420000000.00, 'Industrial Equipment', 3.2),
('Mizoram', 'Mizoram imports consumer goods and agricultural products.', '../public/images/states/img17.png', 290000000.00, 'Consumer Goods', 2.4),
('Nagaland', 'Nagaland imports machinery and consumer goods.', '../public/images/states/img18.png', 310000000.00, 'Machinery', 2.3),
('Odisha', 'Odisha imports industrial machinery for its mining and steel industries.', '../public/images/states/img19.png', 1450000000.00, 'Machinery', 4.6),
('Punjab', 'Punjab imports agricultural machinery, fertilizers, and consumer goods.', '../public/images/states/img20.png', 1680000000.00, 'Agricultural Products', 3.9),
('Rajasthan', 'Rajasthan imports machinery for its mining industry and precious stones.', '../public/images/states/img21.png', 1720000000.00, 'Precious Stones & Gems', 4.2),
('Sikkim', 'Sikkim imports pharmaceutical equipment and raw materials.', '../public/images/states/img22.png', 380000000.00, 'Pharmaceuticals', 5.1),
('Tamil Nadu', 'Tamil Nadu imports machinery, electronic goods, and automotive components.', '../public/images/states/img23.png', 3600000000.00, 'Electronic Goods', 6.3),
('Telangana', 'Telangana imports IT hardware, pharmaceutical equipment, and electronic goods.', '../public/images/states/img24.png', 2800000000.00, 'Electronic Goods', 7.1),
('Tripura', 'Tripura imports consumer goods and agricultural products.', '../public/images/states/img25.png', 340000000.00, 'Consumer Goods', 2.5),
('Uttar Pradesh', 'Uttar Pradesh imports machinery, fertilizers, and consumer goods.', '../public/images/states/img26.png', 2900000000.00, 'Machinery', 4.8),
('Uttarakhand', 'Uttarakhand imports machinery for its pharmaceutical and automotive industries.', '../public/images/states/img27.png', 980000000.00, 'Machinery', 5.3),
('West Bengal', 'West Bengal imports machinery, consumer goods, and textiles.', '../public/images/states/img28.png', 2400000000.00, 'Machinery', 4.5);

-- Sample data for categories
INSERT INTO categories (category_name, category_description, category_image, annual_import_value, main_source_countries, import_growth_rate) VALUES
('Agricultural Products', 'India imports various agricultural products to meet domestic demand.', '../public/images/categories/img1.png', 1200000000.00, 'USA, Australia, Brazil', 3.2),
('Automobiles and Parts', 'India imports automobiles and automotive parts for its growing automotive industry.', '../public/images/categories/img2.png', 2800000000.00, 'Germany, Japan, South Korea', 4.7),
('Aviation and Aerospace', 'India imports aircraft, parts, and aerospace technology.', '../public/images/categories/img3.jpg', 3500000000.00, 'USA, France, Russia', 6.3),
('Base Metals', 'India imports base metals for its manufacturing and construction industries.', '../public/images/categories/img4.jpg', 1800000000.00, 'China, Australia, Russia', 3.8),
('Beverages (Alcoholic and Non-Alcoholic)', 'India imports various beverages to meet consumer demand.', '../public/images/categories/img5.png', 750000000.00, 'UK, France, USA', 4.2),
('Chemicals (Organic, Inorganic, Specialty)', 'India imports chemicals for its pharmaceutical and manufacturing industries.', '../public/images/categories/img6.png', 3200000000.00, 'China, USA, Germany', 5.1),
('Clothing & Textiles', 'India imports specialty textiles and branded clothing.', '../public/images/categories/img7.png', 980000000.00, 'China, Bangladesh, Italy', 2.9),
('Cosmetics & Personal Care Products', 'India imports branded cosmetics and personal care products.', '../public/images/categories/img8.png', 1100000000.00, 'France, USA, South Korea', 6.8),
('Electrical Machinery & Equipment', 'India imports electrical machinery for its growing industrial sector.', '../public/images/categories/img9.png', 4500000000.00, 'China, Germany, Japan', 7.2),
('Energy Products (Oil, Gas, Coal, etc.)', 'India imports energy products to meet its growing energy needs.', '../public/images/categories/img10.png', 8900000000.00, 'Saudi Arabia, Iraq, UAE', 5.6);

-- Add more categories
INSERT INTO categories (category_name, category_description, category_image, annual_import_value, main_source_countries, import_growth_rate) VALUES
('Fertilizers', 'India imports fertilizers to support its agricultural sector.', '../public/images/categories/img11.png', 1400000000.00, 'Russia, China, Saudi Arabia', 3.4),
('Fish and Seafood', 'India imports specific varieties of fish and seafood.', '../public/images/categories/img12.png', 680000000.00, 'Norway, Vietnam, Thailand', 2.8),
('Footwear', 'India imports branded and specialized footwear.', '../public/images/categories/img13.png', 720000000.00, 'China, Vietnam, Italy', 3.6),
('Furniture and Home Goods', 'India imports furniture and home goods for its growing middle class.', '../public/images/categories/img14.png', 950000000.00, 'China, Malaysia, Italy', 4.9),
('Gems & Jewelry', 'India imports raw diamonds and precious stones for its jewelry industry.', '../public/images/categories/img15.png', 3700000000.00, 'South Africa, Belgium, UAE', 5.7),
('Glass and Ceramics', 'India imports specialized glass and ceramic products.', '../public/images/categories/img16.png', 620000000.00, 'China, Italy, Germany', 2.6),
('Iron & Steel', 'India imports specialized steel and iron products.', '../public/images/categories/img17.png', 2600000000.00, 'South Korea, Japan, China', 3.8),
('Leather & Leather Products', 'India imports finished leather products and raw leather.', '../public/images/categories/img18.png', 850000000.00, 'Italy, China, France', 3.1),
('Machinery (Industrial, Electrical, etc.)', 'India imports various types of machinery for its industrial sector.', '../public/images/categories/img19.png', 5200000000.00, 'Germany, China, Japan', 6.4),
('Medical & Pharmaceutical Products', 'India imports specialized medical equipment and pharmaceutical ingredients.', '../public/images/categories/img20.png', 2900000000.00, 'USA, Germany, Switzerland', 7.3);

-- Sample data for product imports (linking states and categories)
INSERT INTO product_imports (product_name, state_id, category_id, import_value, origin_country, import_year, import_volume) VALUES
('Smartphones', 11, 9, 580000000.00, 'China', 2023, 12500000),
('Crude Oil', 14, 10, 1200000000.00, 'Saudi Arabia', 2023, 45000000),
('Gold', 12, 15, 450000000.00, 'Switzerland', 2023, 85000),
('Industrial Robots', 23, 19, 320000000.00, 'Japan', 2023, 15000),
('Fertilizers', 20, 11, 180000000.00, 'Russia', 2023, 2500000),
('Pharmaceutical Equipment', 22, 20, 210000000.00, 'Germany', 2023, 5000),
('Computer Chips', 24, 9, 390000000.00, 'Taiwan', 2023, 8000000),
('Diesel Engines', 7, 2, 270000000.00, 'Germany', 2023, 150000),
('Luxury Vehicles', 8, 2, 350000000.00, 'Germany', 2023, 12000),
('Solar Panels', 14, 9, 280000000.00, 'China', 2023, 500000);

-- Add more product imports
INSERT INTO product_imports (product_name, state_id, category_id, import_value, origin_country, import_year, import_volume) VALUES
('Aircraft Parts', 14, 3, 420000000.00, 'USA', 2023, 250000),
('Organic Chemicals', 7, 6, 310000000.00, 'China', 2023, 1800000),
('Specialty Steel', 23, 17, 260000000.00, 'South Korea', 2023, 950000),
('Medical Imaging Equipment', 24, 20, 290000000.00, 'USA', 2023, 3500),
('Industrial Machinery', 14, 19, 380000000.00, 'Germany', 2023, 25000),
('Raw Diamonds', 7, 15, 520000000.00, 'South Africa', 2023, 120000),
('Electric Vehicle Batteries', 11, 9, 340000000.00, 'South Korea', 2023, 450000),
('Petroleum Coke', 7, 10, 230000000.00, 'USA', 2023, 3500000),
('Artificial Intelligence Processors', 11, 9, 410000000.00, 'USA', 2023, 750000),
('Natural Gas', 14, 10, 680000000.00, 'Qatar', 2023, 12000000);

-- Sample data for import reasons
INSERT INTO import_reasons (reason_title, reason_description, reason_image) VALUES
('Demand-Supply Gap', 'Many sectors in India cannot meet the growing demand through domestic production alone. This includes everything from energy needs (petroleum) to high-tech electronics.', '../public/images/imports/section1/card1.jpg'),
('Lack of Natural Resources', 'India does not have enough reserves of certain natural resources, such as crude oil, gold, and some rare earth metals, which are crucial for industries and consumer goods production.', '../public/images/imports/section1/card2.jpeg'),
('Technological Deficits', 'India relies on imports for advanced technologies such as machinery, electronics, and semiconductors. Many of these technologies are essential to keep pace with global industrial standards.', '../public/images/imports/section1/card3.jpg'),
('Economic Growth', 'Imports of raw materials and machinery are necessary to support India\'s industrial growth. Many domestic industries depend on foreign goods to manufacture products, further driving economic progress.', '../public/images/imports/section1/card4.png'),
('Global Competition', 'India\'s industries must compete on a global scale. To achieve this, access to advanced foreign technologies, quality raw materials, and essential components is vital to maintain competitiveness.', '../public/images/imports/section1/card5.jpg'),
('Infrastructure Development', 'India needs continuous investment in infrastructure to support industrial growth. This includes everything from transportation networks to digital infrastructure, which are crucial to boosting domestic manufacturing.', '../public/images/imports/section1/card6.jpg');

-- Sample data for import issues
INSERT INTO import_issues (issue_title, issue_description, issue_image) VALUES
('Trade Deficit', 'India\'s imports exceed exports, leading to a trade deficit that can strain the economy.', '../public/images/imports/section1/card7.jpg'),
('Dependence on Foreign Goods', 'High reliance on imports makes India vulnerable to global price fluctuations and supply chain disruptions.', '../public/images/imports/section1/card8.jpg'),
('Loss of Jobs', 'Importing goods can negatively impact local industries and lead to job losses in sectors like manufacturing.', '../public/images/imports/section1/card9.jpg'),
('Currency Depreciation', 'A high volume of imports can lead to a depreciation of the Indian Rupee, affecting the overall economy.', '../public/images/imports/section1/card10.jpg');

-- Sample data for major imports
INSERT INTO major_imports (import_name, origin_countries, imported_states, import_reason, import_image) VALUES
('Petroleum Products', 'Iraq, Saudi Arabia, UAE, Russia, and the USA', 'Maharashtra, Gujarat, Tamil Nadu', 'India relies heavily on crude oil to meet its energy needs, as domestic production is insufficient. Petroleum products are also critical for transportation, industries, and power generation.', '../public/images/imports/section2/card1.jpg'),
('Electronic Goods', 'China, South Korea, Vietnam, Taiwan', 'Karnataka, Maharashtra, Tamil Nadu', 'The growing demand for electronics, such as smartphones, laptops, semiconductors, and consumer gadgets, outpaces domestic manufacturing capabilities. India\'s electronics market is one of the fastest-growing sectors, leading to increased imports.', '../public/images/imports/section2/card2.jpg'),
('Precious Metals (Gold and Silver)', 'Switzerland, UAE, South Africa', 'Maharashtra, Kerala, Gujarat', 'India has a high demand for gold and silver, driven by cultural factors such as weddings, festivals, and investments. Despite having some domestic reserves, these precious metals are not enough to meet the demand, thus prompting significant imports.', '../public/images/imports/section2/card3.jpg'),
('Machinery and Equipment', 'Germany, China, Japan, South Korea', 'Maharashtra, Gujarat, Tamil Nadu', 'To support industrial growth, infrastructure development, and technological advancements, India imports a variety of machinery and equipment. This includes machines for manufacturing, construction, and the energy sector.', '../public/images/imports/section2/card4.jpg'),
('Organic Chemicals', 'China, Saudi Arabia, Germany', 'Gujarat, Maharashtra', 'Organic chemicals are used in industries like pharmaceuticals, textiles, and plastics. India lacks sufficient domestic production capacity to meet the growing demand for these chemicals.', '../public/images/imports/section2/card5.jpg'),
('Fertilizers', 'Russia, China, Saudi Arabia', 'Punjab, Uttar Pradesh, Maharashtra', 'India\'s agricultural sector requires a large amount of fertilizers to increase crop yields. Due to limited local production of certain fertilizers, imports are necessary to meet the needs of farmers.', '../public/images/imports/section2/card6.jpg'),
('Iron and Steel', 'South Korea, China, Japan', 'Maharashtra, Gujarat', 'Iron and steel are crucial for infrastructure development, construction, and manufacturing industries. Despite having a substantial domestic industry, India imports high-quality steel for specialized uses in construction, automotive, and other sectors.', '../public/images/imports/section2/card7.jpg');

-- Sample data for import reduction strategies
INSERT INTO import_reduction_strategies (strategy_title, strategy_description, strategy_image) VALUES
('Boost Domestic Production', 'Encourage local manufacturing through initiatives like Make in India and Atmanirbhar Bharat. This will reduce the need for imported goods by increasing the production capacity of domestic industries.', '../public/images/imports/section3/card1.jpg'),
('Enhance Renewable Energy', 'Invest in renewable energy sources such as solar, wind, and bioenergy. This will reduce India\'s dependency on imported fossil fuels like coal and oil, which are necessary for power generation.', '../public/images/imports/section3/card2.jpg'),
('Promote Recycling', 'Encourage the recycling of materials, especially precious metals and electronics. This can reduce the need to import gold, silver, and other valuable materials, thereby cutting down on foreign expenditure.', '../public/images/imports/section3/card3.jpeg'),
('Develop Technology', 'Focus on developing indigenous technologies for sectors like electronics, machinery, and chemicals. By reducing the need for imported tech, India can build a self-reliant industrial base.', '../public/images/imports/section3/card4.jpg'),
('Global Competition', 'India\'s industries must compete on a global scale. To achieve this, access to advanced foreign technologies, quality raw materials, and essential components is vital to maintain competitiveness.', '../public/images/imports/section3/card5.jpg'),
('Sustainable Agriculture', 'Adopt practices that enhance agricultural productivity while minimizing environmental impact. Focusing on sustainability will help India reduce the need for importing food and raw agricultural materials.', '../public/images/imports/section3/card6.jpg');

-- Added 2025 product import data (missing states & categories)

INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES
('Beverages (Alcoholic and Non-Alcoholic) - Product 1', 1, 5, 871456320.0, 'France', 2025, 1325063),
('Cosmetics & Personal Care Products - Product 2', 14, 8, 911580416.0, 'USA', 2025, 2598404),
('Furniture and Home Goods - Product 3', 22, 14, 785134437.62, 'Malaysia', 2025, 2078923),
('Glass and Ceramics - Product 4', 6, 16, 505415680.0, 'Germany', 2025, 3208486),
('Leather & Leather Products - Product 5', 8, 18, 816640000.0, 'Italy', 2025, 1370817),
('Clothing & Textiles - Product 6', 3, 7, 701469440.0, 'Bangladesh', 2025, 4516591),
('Base Metals - Product 7', 20, 4, 728483328.0, 'China', 2025, 3925476),
('Fish and Seafood - Product 8', 10, 12, 722620800.0, 'Norway', 2025, 1745373),
('Footwear - Product 9', 7, 13, 809699328.0, 'Vietnam', 2025, 2773054),

('State 2 Product', 2, 9, 754432000.0, 'China', 2025, 1554865),
('State 4 Product', 4, 10, 819200000.0, 'Japan', 2025, 3195407),
('State 5 Product', 5, 19, 878934048.0, 'USA', 2025, 929717),
('State 6 Product', 6, 19, 874176256.0, 'Germany', 2025, 2025678),
('State 9 Product', 9, 9, 719794774.84, 'Japan', 2025, 9382347),
('State 13 Product', 13, 10, 661800000.0, 'Germany', 2025, 716888),
('State 15 Product', 15, 19, 960064000.0, 'China', 2025, 1277401),
('State 16 Product', 16, 9, 918400000.0, 'Germany', 2025, 6830900),
('State 17 Product', 17, 10, 867360000.0, 'Germany', 2025, 1534227),
('State 18 Product', 18, 19, 839212608.0, 'Japan', 2025, 2458391),
('State 19 Product', 19, 9, 967334148.0, 'Germany', 2025, 786524),
('State 21 Product', 21, 10, 808626561.2, 'China', 2025, 1723987),
('State 25 Product', 25, 19, 967334148.0, 'USA', 2025, 2651677),
('State 26 Product', 26, 19, 819760000.0, 'China', 2025, 3093953),
('State 27 Product', 27, 10, 920044947.68, 'Germany', 2025, 1690439),
('State 28 Product', 28, 9, 864000000.0, 'Germany', 2025, 5057355);

-- Product imports for 2024 and 2025

INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Smartphones', 11, 9, 621760000.0, 'China', 2024, 13400000
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Smartphones', 11, 9, 666526720.0, 'China', 2025, 14364800
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Crude Oil', 14, 10, 1267200000.0, 'Saudi Arabia', 2024, 47520000
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Crude Oil', 14, 10, 1338163200.0, 'Saudi Arabia', 2025, 50181120
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Gold', 12, 15, 475650000.0, 'Switzerland', 2024, 89845
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Gold', 12, 15, 502762050.0, 'Switzerland', 2025, 94966
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Computer Chips', 24, 9, 418080000.0, 'Taiwan', 2024, 8576000
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Computer Chips', 24, 9, 448181760.0, 'Taiwan', 2025, 9193472
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Diesel Engines', 7, 2, 282690000.0, 'Germany', 2024, 157050
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Diesel Engines', 7, 2, 295976430.0, 'Germany', 2025, 164431
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Medical Imaging Equipment', 24, 20, 311170000.0, 'USA', 2024, 3755
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Medical Imaging Equipment', 24, 20, 333885410.0, 'USA', 2025, 4029
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Beverages Import', 2, 5, 408205078.63, 'France', 2024, 995077
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Cosmetics Import', 4, 8, 515664227.83, 'USA', 2024, 2474610
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Furniture Import', 5, 14, 390111026.01, 'Malaysia', 2024, 1577293
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Glass Import', 6, 16, 549141549.73, 'Germany', 2024, 1616742
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Leather Import', 9, 18, 301749148.8, 'Italy', 2024, 471093
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Textiles Import', 10, 7, 519463795.16, 'Bangladesh', 2024, 1290843
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Base Metals Import', 13, 4, 362841158.33, 'China', 2024, 340693
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Fish Import', 15, 12, 309958249.6, 'Norway', 2024, 1854856
);
INSERT INTO product_imports (
    product_name, state_id, category_id, import_value, origin_country, import_year, import_volume
) VALUES (
    'Footwear Import', 16, 13, 355063324.81, 'Vietnam', 2024, 2424156
);