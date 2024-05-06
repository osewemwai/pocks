import 'package:flutter/material.dart';

class BorrowedBooks extends StatefulWidget {
  const BorrowedBooks({super.key});

  @override
  State<BorrowedBooks> createState() => _BorrowedBooksState();
}

class _BorrowedBooksState extends State<BorrowedBooks> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 100,
      fallbackWidth: 100,
      color: Colors.red,
    );
  }
}