import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:food_delivery_app/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Burger",
      description: "A juicy potato patty burger",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 139,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Bacon", price: 80),
        Addon(name: "Avocado", price: 60),
      ],
    ),
    Food(
      name: "Cheese Delight Burger",
      description: "A delicious burger with double cheese",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 159,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Grilled Onions", price: 30),
        Addon(name: "Jalapenos", price: 40),
      ],
    ),
    Food(
      name: "Spicy Fiesta Burger",
      description: "A spicy burger with jalapenos and special sauce",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 149,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Jalapenos", price: 25),
        Addon(name: "Spicy Sauce", price: 15),
        Addon(name: "Guacamole", price: 50),
      ],
    ),
    Food(
      name: "Veggie Supreme Burger",
      description: "A healthy burger with fresh vegetables",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 129,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Veggies", price: 20),
        Addon(name: "Hummus", price: 40),
        Addon(name: "Olives", price: 30),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "A smoky burger with BBQ sauce and bacon",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 169,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 80),
        Addon(name: "BBQ Sauce", price: 20),
        Addon(name: "Fried Egg", price: 40),
      ],
    ),
    //salads
    Food(
      name: "Fresh Garden Salad",
      description: "A refreshing salad with mixed greens and vegetables",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 10),
        Addon(name: "Grilled Chicken", price: 50),
        Addon(name: "Feta Cheese", price: 30),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description: "Classic Caesar salad with romaine lettuce and croutons",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 119,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Croutons", price: 10),
        Addon(name: "Parmesan Cheese", price: 20),
        Addon(name: "Anchovies", price: 30),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "A tangy salad with cucumbers, tomatoes, and olives",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 109,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Olives", price: 15),
        Addon(name: "Red Onions", price: 10),
        Addon(name: "Tzatziki Sauce", price: 20),
      ],
    ),
    //sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries",
      imagePath: "lib/images/sides/fries.jpg",
      price: 59,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 20),
        Addon(name: "Chili Flakes", price: 10),
        Addon(name: "Ketchup", price: 5),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted bread with garlic butter",
      imagePath: "lib/images/sides/garlic_bread.jpg",
      price: 49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 10),
        Addon(name: "Cheese Topping", price: 20),
        Addon(name: "Herbs", price: 5),
      ],
    ),
    Food(
      name: "Chicken Nuggets",
      description: "Crispy and tender chicken nuggets",
      imagePath: "lib/images/sides/nuggets.jpg",
      price: 89,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 15),
        Addon(name: "Honey Mustard", price: 15),
        Addon(name: "Spicy Mayo", price: 20),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy fried onion rings",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dressing", price: 15),
        Addon(name: "Chipotle Sauce", price: 20),
        Addon(name: "Cajun Seasoning", price: 10),
      ],
    ),
    Food(
      name: "Samosa",
      description: "Spicy and crispy samosas",
      imagePath: "lib/images/sides/samosa.jpg",
      price: 69,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Mint Chutney", price: 15),
        Addon(name: "Tamarind Sauce", price: 15),
        Addon(name: "Extra Spice", price: 10),
      ],
    ),
    //desserts
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust",
      imagePath: "lib/images/desserts/cheesecake.jpg",
      price: 149,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 20),
        Addon(name: "Whipped Cream", price: 15),
        Addon(name: "Chocolate Sauce", price: 20),
      ],
    ),
    Food(
      name: "Cookie",
      description: "Freshly baked chocolate chip cookie",
      imagePath: "lib/images/desserts/cookie.jpg",
      price: 39,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate Chips", price: 10),
        Addon(name: "Vanilla Ice Cream", price: 30),
        Addon(name: "Caramel Drizzle", price: 15),
      ],
    ),
    Food(
      name: "Doughnut",
      description: "Glazed doughnut with a soft center",
      imagePath: "lib/images/desserts/doughnut.jpg",
      price: 49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 10),
        Addon(name: "Cream Filling", price: 20),
        Addon(name: "Chocolate Glaze", price: 15),
      ],
    ),
    Food(
      name: "Muffin",
      description: "Blueberry muffin with a crumbly top",
      imagePath: "lib/images/desserts/muffin.jpg",
      price: 59,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Butter", price: 10),
        Addon(name: "Honey", price: 15),
        Addon(name: "Extra Blueberries", price: 20),
      ],
    ),
    Food(
      name: "Pretzel",
      description: "Soft pretzel with a golden crust",
      imagePath: "lib/images/desserts/pretzel.jpg",
      price: 79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cheese Dip", price: 20),
        Addon(name: "Mustard", price: 10),
        Addon(name: "Salt", price: 5),
      ],
    ),
    //drinks
    Food(
      name: "Coke",
      description: "Refreshing Coca-Cola",
      imagePath: "lib/images/drinks/coke.jpg",
      price: 39,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 10),
        Addon(name: "Ice", price: 5),
      ],
    ),
    Food(
      name: "Cold Coffee",
      description: "Iced coffee with a rich flavor",
      imagePath: "lib/images/drinks/coldcoffee.jpg",
      price: 89,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 15),
        Addon(name: "Chocolate Syrup", price: 20),
      ],
    ),
    Food(
      name: "Hazelnut Shake",
      description: "Creamy hazelnut milkshake",
      imagePath: "lib/images/drinks/hazlenutshake.jpg",
      price: 99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Hazelnut", price: 20),
        Addon(name: "Whipped Cream", price: 15),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon",
      imagePath: "lib/images/drinks/icedtea.jpg",
      price: 49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 10),
        Addon(name: "Mint Leaves", price: 15),
      ],
    ),
    Food(
      name: "Mojito",
      description: "Refreshing mint and lime mojito",
      imagePath: "lib/images/drinks/mojito.jpg",
      price: 59,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 10),
        Addon(name: "Extra Lime", price: 10),
      ],
    ),
  ];



  //user cart:
  final List<CartItem> _cart = [];
  String _deliveryAddress = "Pocket-1, Mayur Vihar Phase-1";

  // -----------------G E T T E R S------------------

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // --------------O P E R A T I O N S---------------

  // add to cart:
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total no of items in cart
  int getTotalItemCount() {
    int count = 0;
    for (CartItem cartItem in _cart) {
      count += cartItem.quantity;
    }
    return count;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // -----------------H E L P E R S------------------

  //generate a reciept
  String displayCartReciept() {
    final reciept = StringBuffer();
    reciept.writeln("Here's your reciept.");
    reciept.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    reciept.writeln(formattedDate);
    reciept.writeln();
    reciept.writeln("---------");

    for (final cartItem in _cart) {
      reciept.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        reciept
            .writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      reciept.writeln();
    }
    reciept.writeln("----------");
    reciept.writeln();
    reciept.writeln("Total Items: ${getTotalItemCount()}");
    reciept.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    reciept.writeln();
    reciept.writeln("Delivering to: $deliveryAddress");
    
    return reciept.toString();
  }

  //formal double value into money
  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
