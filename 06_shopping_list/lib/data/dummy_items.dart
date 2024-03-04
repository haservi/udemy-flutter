import 'package:shopping_list/data/categories.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/grocery_item.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: '우유',
      quantity: 1,
      category: categories[Categories.dairy]!),
  GroceryItem(
      id: 'b',
      name: '바나나',
      quantity: 10,
      category: categories[Categories.fruit]!),
  GroceryItem(
      id: 'c',
      name: '소고기',
      quantity: 4,
      category: categories[Categories.meat]!),
];
