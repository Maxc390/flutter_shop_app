import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/providers/cart_provider.dart';
// import 'package:shop_app_flutter/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page'),
          centerTitle: true,
        ),
        body: cart.isEmpty
            ? const Center(
                child: Text('No Items Added Yet!'),
              )
            : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final cartItem = cart[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(cartItem['imageUrl'] as String),
                      radius: 30,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'DeleteProduct?',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  content: const Text(
                                      'Are You Sure You want to remove this product from your Cart?'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          'No',
                                          style: TextStyle(color: Colors.blue),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          context
                                              .read<CartProvider>()
                                              .removeProduct(cartItem);
                                          // Provider.of<CartProvider>(context,
                                          //         listen: false)
                                          //     .removeProduct(cartItem);
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          'Yes',
                                          style: TextStyle(color: Colors.red),
                                        ))
                                  ],
                                );
                              });
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                    title: Text(
                      cartItem['title'] as String,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text('Size: ${cartItem['size']}'),
                  );
                }));
  }
}
