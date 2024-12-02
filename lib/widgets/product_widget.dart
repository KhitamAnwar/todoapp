import 'package:flutter/material.dart';
import 'package:tryyyy3/model/product.dart';

class ProductWidget extends StatelessWidget {
  Product? product ;
  Function? function;

   ProductWidget({ this.product , this.function});


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: Colors.blue.withOpacity(0.3) ),
      child: Row(children: [
        Container(
          height: 80,
          width: 80,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(product!.image)), borderRadius: const BorderRadius.all(Radius.circular(10)))),
       const SizedBox(width: 10),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(product!.name), Text(product!.description), 
          ],

        )),
        IconButton( 
          
          onPressed: (){
            function!(product);
          },
          icon: Icon(Icons.favorite, color: product!.isFavourite?Colors.red:Colors.white,))
       
      ]),
    );
  }
}