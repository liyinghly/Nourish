-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 03:28 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nourish`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `recipeId` int(11) NOT NULL,
  `recipeName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datePosted` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wRecipe` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vRecipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `ingredients`, `image`, `wRecipe`, `vRecipe`) VALUES
(1, 'Honey Glazed Salmon', '12 oz skinless salmon(340 g), 1 tablespoon olive oil, 4 cloves garlic, minced, 2 teaspoons ginger, minced, 1/2 teaspoon red pepper, 1 tablespoon olive oil, 1/3 cup less sodium soy sauce(80 mL), 1/3 cup honey(115 g).', 'img/honeyGlazedSalmon.png', 'Place salmon in a sealable bag or medium bowl. In a small bowl or measuring cup, mix marinade ingredients. Pour half of the marinade on the salmon. Save the other half for later. Let the salmon marinate in the refrigerator for at least 30 minutes. In a medium pan, heat oil. Add salmon to the pan, but discard the used marinade. Cook salmon on one side for about 2-3 minutes, then flip over and cook for an additional 1-2 minutes. Remove salmon from pan. Pour in remaining marinade and reduce. Serve the salmon with sauce and a side of veggies. We used broccoli. Enjoy!', 'https://www.youtube.com/embed/cS8pCREiKvY'),
(2, 'Easy Fish Tacos', '4 tilapia fillets, 1/4 teaspoon cayenne pepper, ground, 1/2 teaspoon garlic powder, 1/2 teaspoon cumin, 1/2 teaspoon salt, 1/2 teaspoon pepper, 16 corn tortillas.', 'img/fishTaco.png', 'In a bowl, mix cayenne, garlic powder, cumin, salt, and pepper. Season each tilapia fillet on both sides with the seasoning mix. Over medium-high heat, cook 2 fillets at a time for 8 minutes, flipping halfway. Repeat for the remaining fillets. Using a fork, break apart the fillets into bite-size pieces. Right before serving, heat the corn tortillas in the pan over high heat. Remove from the pan and assemble the tacos with the tilapia. Garnish with cilantro and lime juice. Enjoy!', 'https://www.youtube.com/embed/pWuQVJU2J0k'),
(3, 'Berry Smoothie Bowl', '1/2 cup strawberry(75 g), 1/2 cup raspberry(60 g), 1 cup blackberry(55 g), 1 banana, sliced, 1/2 cup greek yogurt(140 g), 1/4 cup almond milk(60 mL), or soy milk, 1/4 cup peanut butter(60 g).', 'img/smoothieBowl.png', 'Add the berries, banana, Greek yogurt, almond milk, and peanut butter to a blender and blend until smooth. Top with your favorite toppings. Enjoy!', 'https://www.youtube.com/embed/b37XaK4m58w'),
(4, 'Cauliflower Crust Pizza', '1 head cauliflower, 1/2 cup shredded mozzarella cheese(50 g), 1/2 teaspoon dried oregano, 1/2 teaspoon dried basil, 1/2 teaspoon salt, 1/2 teaspoon garlic powder, 1 egg.', 'img/cauliflowerPizza.png', 'Preheat oven to 500˚F (260˚C). Remove the leaves and stem of the cauliflower. Transfer pieces to a food processor and rice the cauliflower by pulsing it in the food processor, or by shredding it on a box grater. Once riced, transfer to a large bowl and microwave for 4 minutes. Let it cool down for a few minutes before handling! Transfer cooked cauliflower to a clean towel and wring out as much liquid as possible. Place wrung cauliflower in a bowl and combine with mozzarella, oregano, basil, salt, garlic powder, and an egg. Mix well. Line a baking sheet with parchment paper. Place cauliflower mixture in the middle. Spread out the mixture and form a circle out of the cauliflower mixture, pushing along the edge to raise a “crust.” Bake for 15 minutes, or until the crust has become golden brown in the center and on the edges. Top with your favorite pizza sauce and toppings, being careful not to overload the pizza. Bake for another 5-7 minutes, or until the cheese has fully melted. Enjoy!', 'https://www.youtube.com/embed/FGorXsGevrk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'john', 'johnlee@gmail.com', '123'),
(3, 'billy', 'billy@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipeId`),
  ADD KEY `user_id` (`userId`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `recipe_id` FOREIGN KEY (`recipeId`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
