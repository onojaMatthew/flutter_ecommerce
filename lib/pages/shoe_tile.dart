import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Function()? onTap;
  Shoe shoe;
   ShoeTile({
    super.key,
    required this.shoe,
     required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 225,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )

              ],
            )
          )


        ],
      ),
    );
  }
}
