import 'package:flutter/material.dart';
import 'package:logintest/screens/AvailableSize.dart';
import 'product.dart';

class DetailsScreen extends StatelessWidget {
  final product products; // Assuming the class name is 'product' (lowercase 'p')
  const DetailsScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: Colors.pink,
        leading: const BackButton(),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product Image
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(products.images), // Use 'products' here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(products!.titles,
                  style:TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                Text(products!.prices.toString(),
                  style:TextStyle(
                      fontSize:25,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Avalbile size",
                style:TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 30,),
            // Product Details Container
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  products.titles,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Product Price
            Text(
              products!.prices.toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Available Size",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
              ),
            ),
            Row(
              children: [
                Availablesize(Size :"S"),
                Availablesize(Size :"M"),
                Availablesize(Size :"L"),
              ],
            ),
             Align(
               alignment: Alignment.topLeft,
               child: Text("Available Color",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
               ),
             ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blueGrey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        height:50,
        color: Colors.blue,
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${products!.prices.toString()} JOD",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              IconButton(onPressed: (){}, 
                  icon: Icon(Icons.add_shopping_cart_sharp))

            ],
          ),
        ),
        ),
      );
  }
}
