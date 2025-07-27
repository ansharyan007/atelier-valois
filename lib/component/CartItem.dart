import 'package:atelier_valois/cloth.dart';
import 'package:atelier_valois/component/add.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartitem extends StatefulWidget {
  Cloth cloth;
  cartitem({super.key,required this.cloth});

  @override
  State<cartitem> createState() => _cartState();
}

class _cartState extends State<cartitem> {
  void removeitem(){
    Provider.of<add>(context,listen: false).RemoveItem(widget.cloth);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.cloth.imagePath),
        title: Text(widget.cloth.name),
        subtitle: Text('\$'+widget.cloth.price),
        trailing: IconButton(onPressed:removeitem, icon: Icon(Icons.delete))
      ),
    );
  }
}