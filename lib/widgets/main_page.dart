import 'package:flutter/material.dart';
import 'package:tryyyy3/data/data_source.dart';
import 'package:tryyyy3/model/product.dart';
import '../ui/pages/favourite_page.dart';
import '../ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  toggleProduct(Product product){
    setState(() {
          int index = products.indexOf(product);

      products[index].isFavourite = !products[index].isFavourite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
          title: const Text('Ecommerce App'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.favorite_outline)),
          ]),
          
        ),
        body:  TabBarView(children: [
          HomePage(function: toggleProduct,),
          FavouritePage(function: toggleProduct,),
        ]),
        ));
  }
}
