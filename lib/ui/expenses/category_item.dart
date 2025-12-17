import 'package:flutter/material.dart';
import '../../models/expense_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.total});

  final Category category;
  final double total;

  IconData get categoryIcon {
    switch (category) {
      case Category.food:
        return Icons.restaurant;
      case Category.travel:
        return Icons.flight;
      case Category.leisure:
        return Icons.movie;
      case Category.work:
        return Icons.work;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${total.toStringAsFixed(0)}\$',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Icon(categoryIcon, size: 30, color: Colors.black87),
      ],
    );
  }
}
