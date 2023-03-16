import 'package:flutter/material.dart';

class Book {
  final String title;
  final String author;

  Book(this.title, this.author);
}

class HomeScreen extends StatelessWidget {
  final List<Book> books = [
    Book('Flutter Cookbook', 'Unknown Author'),
    Book('Dart Programming', 'Foo bar'),
    Book('Mobile App Design', 'Smith'),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        books[index].title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(books[index].author),
                    ],
                  ),
                  const Icon(
                    Icons.book_online_outlined,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
