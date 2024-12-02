import 'package:flutter/material.dart';
import 'package:tryyyy3/data/data_source.dart';
import 'package:tryyyy3/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
    Function? function;
   HomePage({super.key , this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductWidget(product: products[index], function: function);
        },),
    );
  }
}