import 'package:ecommerceapp/components/button.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Remove this item from your cart?"),
        actions: [
          //cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),

          //add button
          MaterialButton(
            onPressed: () {
              //pop the dialogbox
              Navigator.pop(context);

              //add to cart
              context.read<ShopModel>().removeFromCart(product);
            },
            child: Text("Remove"),
          ),
        ],
      ),
    );
  }

  //pay method

  void payButttonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          "User wants to pay!, Connect this app to your payment backend",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<ShopModel>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          //cart list
          Expanded(
            child: cart.isEmpty
                ? Center(child: Text("Your Cart is Empty"))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get individual item in cart
                      final item = cart[index];

                      //return as a list tile
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toString()),
                        trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: const Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
          ),

          //pay button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Mybutton(
              onTap: () => payButttonPressed(context),
              child: Text("Pay Now"),
            ),
          ),
        ],
      ),
    );
  }
}
