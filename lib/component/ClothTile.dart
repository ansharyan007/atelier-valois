import 'package:atelier_valois/cloth.dart';
import 'package:flutter/material.dart';
import '';
class clothtile extends StatelessWidget {
  Cloth cloth;
  void Function()?ontap;
  clothtile({super.key,required this.cloth,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset(
              cloth.imagePath
              )
            ),
            Text(
              'luxury',
              style: TextStyle(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cloth.name,
                        style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        '\$'+cloth.price,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap:ontap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child:Icon(Icons.add,color: Colors.white,),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )
                    ),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}