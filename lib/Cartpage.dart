import 'package:ecommerce_app/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
            child: Icon(CupertinoIcons.back)),
        title: Text(
          'Cart Page',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                      cart.length,
                      (index) => ListTile(
                          leading: Image.asset(cart[index]['img']),
                          title: Text(cart[index]['name']),
                          subtitle: Text('\$ ${cart[index]['price']}/-'),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {});

                                cart.removeAt(index);
                              },
                              icon: const Icon(Icons.delete))))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.red.shade500,
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/total');
                  });
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/total');
                        });
                      },
                      child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
