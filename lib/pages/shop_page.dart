import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/shoe.dart';
import 'package:ecommerce/pages/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart!"),
        content: Text("Check your cart"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "everyone flies... some fly longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot picks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),
                ),
                Text(
                  "Hot picks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),

          Expanded(
              child: ListView.builder(
                  itemCount: value.getShoes().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoes()[index];
                     return ShoeTile(
                      shoe: shoe,
                       onTap: () => addShoeToCart(shoe),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
