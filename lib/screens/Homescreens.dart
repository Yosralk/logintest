import 'package:flutter/material.dart';
import 'product.dart';
import 'DetailsScreen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  static const List<String> tabs = [
    "All",
    "Category",
    "Top",
    "Recommended",
  ];

  final List<product> products = [
    product('Womens Jacket', 20, 'images/img1.jpg'),
    product('Womens Jeans', 15, 'images/img2.jpg'),
    product('Girls Clothes', 10, 'images/img3.jpg'),
    product('Summer Dresses', 12, 'images/img4.jpg'),
    product('Womens Heels', 22, 'images/img5.jpg'),
    product('Womens Makeup', 25, 'images/img6.jpg'),
    product('Shoes for Men', 13, 'images/img7.jpg'),
    product('Womens Shirt', 5, 'images/img8.jpg'),
    product('Womens Suits', 9, 'images/img9.jpg'),
  ];

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search and Filter Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Search Box
                Container(
                  width: MediaQuery.of(context).size.width / 1.75,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEDCED6).withOpacity(0.5),
                        blurRadius: 0.8,
                        spreadRadius: 0.5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // Filter Box
                Container(
                  width: MediaQuery.of(context).size.width / 6.5,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEDCED6).withOpacity(0.5),
                        blurRadius: 0.8,
                        spreadRadius: 0.5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Filter",
                      prefixIcon: const Icon(Icons.filter_list),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Banner
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFEDCED6).withOpacity(0.5),
                    blurRadius: 0.8,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("images/ss.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Tabs Row
            SizedBox(
              height: 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: HomeScreens.tabs.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7.5),
                    margin: const EdgeInsets.only(right: 15),
                    child: Text(
                      HomeScreens.tabs[index],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // Products Horizontal List
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  final product = widget.products[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>DetailsScreen(product: product),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 160,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    color: const Color(0xFF8F3340),
                                    child: Image.asset(
                                      product.images,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      product.titles,
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text("\$${product.prices}"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Favorite Icon
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xFF8C1138),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // All Items Section
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "All Items",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Grid View for All Items
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.5,
                  childAspectRatio: 0.7,
                ),
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  final product = widget.products[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: product),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    color: const Color(0XCD2b0a14),
                                    child: Image.asset(
                                      product.images,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    product.titles,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text("\$${product.prices}"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Favorite Icon
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Color(0xFF8C1138),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
