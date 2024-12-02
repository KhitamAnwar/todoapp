import 'package:flutter/material.dart';
import 'package:tryyyy3/data/data_source.dart';
import 'package:tryyyy3/widgets/product_widget.dart';

class FavouritePage extends StatelessWidget {
  Function? function;
   FavouritePage({super.key , this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: products.where((element) => element.isFavourite).length,
        itemBuilder: (context, index) {
          return ProductWidget(product: products.where((element) => element.isFavourite).toList()[index], function: function);
        },),
    );
  }
}