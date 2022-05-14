import 'package:flutter/material.dart';
import 'package:industry/models/cartmodel.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: Cart.product1.length,
              itemBuilder: (BuildContext context, int index) {
                if (Cart.product1.isEmpty) {
                  return const Text('no products in cart');
                }
                final item = Cart.product1[index];
                return ListTile(
                    title: Text(item.name),
                    subtitle: Text('cost: ${item.price.toString()}'),
                    trailing: const Text('tap to remove from cart'),
                    onTap: () {
                      // context.read is the easiest way to call
                      // methods on a provided model
                      Cart.product1.remove(item);
                    });
              },
            ),
          ),
          const Divider(),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              // remember, context.select allows you to
              // listen to specific properties, and ignore the rest of a class
              'TOTAL: ${((Cart price) => price.total)}',
              style: Theme.of(context).textTheme.headline3,
            ),
          )
        ],
      ),
    );
  }
}
