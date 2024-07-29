import 'package:ecommerce_app/utils/global.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Detail page',style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage(product[selectedindex]['img']),
                ),
              ),
            ),
          ),
          Container(
            height: 440,
            width: 450,
            color: Colors.grey.shade100,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(product[selectedindex]['name'],style: const TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                  Text('\$ ${product[selectedindex]['price']}/-',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                  Text(product[selectedindex]['discription'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                   Padding(
                     padding: const EdgeInsets.all(30),
                     child: Container(
                      margin: const EdgeInsets.only(left: 20,top: 10),
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.red.shade500,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed('/cart');
                          });
                        },
                        child: const Row(
                          children: [
                            SizedBox(width: 50,),
                            Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 18),),
                            SizedBox(width: 30,),
                            Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 22,),
                          ],
                        ),
                      ),
                     ),
                   ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
