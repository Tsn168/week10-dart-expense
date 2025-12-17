import 'package:flutter/material.dart';
import '../../models/expense_model.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key, required this.category, required this.total});
  final Category category;
  final double total;
  IconData get categoryIcon {
    switch (category) {
      case Category.food:
        return Icons.restaurant;
      case Category.travel:
        return Icons.travel_explore;
      case Category.leisure:
        return Icons.sports_esports;
      case Category.work:
        return Icons.work;
    }
  }

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${widget.total.toStringAsFixed(0)} \$',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Icon(widget.categoryIcon, size: 24),
      ],
    );
  }
}
