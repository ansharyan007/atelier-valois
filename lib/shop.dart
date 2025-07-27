import 'package:atelier_valois/cloth.dart';
import 'package:atelier_valois/component/ClothTile.dart';
import 'package:atelier_valois/component/add.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addcloth(Cloth cloth){
    Provider.of<add>(context,listen: false).addcart(cloth);
    showDialog(
      context: context,
      builder:(context)=> AlertDialog(
        title: Text('Successfully Added'),
        content: Text('Check Your Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<add>(builder:(context,value,child)=>Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search"),
              Icon(Icons.search)
            ],
          ),
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arrival"
                ,style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context,index){
              Cloth cloth=value.getclothlist()[index];
              return clothtile(
                ontap: ()=>addcloth(cloth),
                cloth:cloth ,
              );
            },
          )
        ),
      ],
    ),
    );
  }
}