  import 'package:flutter/material.dart';
  import 'package:food_delivery_app/pages/cart_page.dart';

  class MySliverAppBar extends StatelessWidget {
    final Widget title;
    final Widget child;
    const MySliverAppBar({
      super.key,
      required this.title,
      required this.child,
    });

    @override
    Widget build(BuildContext context) {
      return SliverAppBar(
        expandedHeight: 360,
        collapsedHeight: 120,
        floating: false,
        actions: [
          IconButton(
            onPressed: () {
              //go to cart page:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart_rounded),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text("Sunset Dinner"),
        flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: child,
            ),
            title: title,
            centerTitle: true,
            titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0)),
      );
    }
  }
