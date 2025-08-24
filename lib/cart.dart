import 'package:atelier_valois/cloth.dart';
import 'package:atelier_valois/component/CartItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:atelier_valois/component/add.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<add>(builder: (context,value,child)=>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(itemCount:value.getusercart().length,itemBuilder: (context,index){
                Cloth individualcloth=value.getusercart()[index];
                return Cartitem(cloth:individualcloth);
              }
            )
          )
          ],
        ),
      )
    );
  }
}