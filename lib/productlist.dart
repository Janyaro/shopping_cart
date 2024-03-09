import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    "Mango",
    "orange",
    "Banana",
    "grapes",
    "peach",
    "cherry",
    "Mixed fruit backet"
  ];
  List<String> productUnit = [
    "Kg",
    "dozen",
    "dozen",
    "kg",
    "Kg",
    "dozen",
    "kg"
  ];
  List<String> productPrice = ['10', '20', '30', '40', '80', '60', '50'];
  List<String> productLinks = [
    'https://tse1.mm.bing.net/th?id=OIP.TSMOzugu88dU_rlJkJXCSQHaHa&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.OcCMakSyTXtuWAe1jWuSXgHaHa&pid=Api&P=0&h=220',
    'https://tse4.mm.bing.net/th?id=OIP.Js2pupUEp6HOi2qIxnJWWgHaHa&pid=Api&P=0&h=220',
    'https://tse1.mm.bing.net/th?id=OIP.TSMOzugu88dU_rlJkJXCSQHaHa&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.OcCMakSyTXtuWAe1jWuSXgHaHa&pid=Api&P=0&h=220',
    'https://tse4.mm.bing.net/th?id=OIP.Js2pupUEp6HOi2qIxnJWWgHaHa&pid=Api&P=0&h=220',
    'https://tse4.mm.bing.net/th?id=OIP.Js2pupUEp6HOi2qIxnJWWgHaHa&pid=Api&P=0&h=220'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product list'),
        centerTitle: true,
        actions: const [
          Center(
            child: badges.Badge(
              badgeContent: Text(
                '0',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Image(
                                    height: 80,
                                    width: 80,
                                    image: NetworkImage(
                                        productLinks[index].toString())),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productName[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        productUnit[index].toString() +
                                            "  " +
                                            r"$" +
                                            productPrice[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text('Add to cart'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
