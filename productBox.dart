import 'package:flutter/material.dart';
import 'package:industry/models/product.dart';
import 'package:industry/widgets/Ratings.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({required Key key,required this.item}) : super(key: key);
        final Product item;
    Widget build(BuildContext context) {
        return Container(
              padding: const EdgeInsets.all(2),
                height: 140,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/" + item.image),
                        Expanded(
                         child: Container(
                     padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                           children: <Widget>[
                             Text(item.name,style: 
                             const TextStyle(fontWeight: FontWeight.bold)),
                             Text(item.description),
                             Text("Price: " + item.price.toString()),
                              const RatingBox(),
                ],
            )))
          ]),
     ));
  }
}