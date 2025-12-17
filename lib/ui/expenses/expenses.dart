import 'package:flutter/material.dart';
import '../../models/expense_model.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expense: expenses[index]),
    );
  }
}

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  IconData get expenseIcon {
    switch (expense.category) {
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

  String get expenseDate {
    return "${expense.date.day}/${expense.date.month}/${expense.date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expense.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${expense.amount.toStringAsPrecision(4)} \$"),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(expenseIcon),
                  ),
                  Text(expenseDate),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
