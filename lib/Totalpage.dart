import 'package:ecommerce_app/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Totalpage extends StatefulWidget {
  const Totalpage({super.key});

  @override
  State<Totalpage> createState() => _TotalpageState();
}

class _TotalpageState extends State<Totalpage> {
  @override
  void initState() {
    // TODO: implement initState
    total = 0;
    dynamic shopTotal=0;
    for (int i = 0; i < cart.length; i++) {
      shopTotal = shopTotal + cart[i]['price'];
    }
    shopTotal+=(shopTotal*18)/100;

    total=shopTotal;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              total = 0;
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Icon(CupertinoIcons.back)),
        title: Text(
          'Total Page',
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
                                total=total-cart[index]['price'];
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
                    Navigator.of(context).pushReplacementNamed('/home');
                  });
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Checkout  : ${total}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
