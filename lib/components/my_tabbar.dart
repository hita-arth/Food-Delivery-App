import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  final bool isScrollable;

  const MyTabBar({
    super.key,
    required this.tabController,
    required this.isScrollable,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: isScrollable,  // Ensure the TabBar is scrollable
      tabs: _buildCategoryTabs(),
    );
  }
}
