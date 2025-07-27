import 'package:atelier_valois/Home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.only(top: 120)),
            Image.asset('lib/image/icon.png',height: 300,width: 500,),
            const SizedBox(height: 10,),
            Text("Where Royal Heritage Meets Modern Elegance.",style: TextStyle(color: Colors.grey),),
            Text("Discover handcrafted luxury fashion. Timeless styles, delivered seamlessly",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
            const SizedBox(height: 50,),
            Center(
              child: GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 142, 86, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                      
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}