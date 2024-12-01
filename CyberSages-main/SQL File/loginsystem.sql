-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS loginsystem;

-- Use the database
USE loginsystem;

-- Table structure for table `admin`
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `admin`
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d...');

-- Table structure for table `users`
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `users`
INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(1, 'Harresh', 'Varrmar', 'harreshvarrmar@gmail.com', 'Test@123', '0123456789', '2024-10-15 06:15:52'),
(2, 'Karthi', 'Loganathan', 'karthi@gamil.com', 'Test@12345', '01269876969', '2024-10-15 06:35:03');

-- Table structure for table `cart_items`
CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


COMMIT;
