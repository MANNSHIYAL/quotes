import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   "We cannot solve problems with the kind of thinking we employed when we came up with them",
  //   "Learn as if you will live forever, live like you will die tomorrow.",
  //   "Either you run the day or the day runs you."
  // ];
  List<Quote> quotes = [
    Quote(
        "We cannot solve problems with the kind of thinking we employed when we came up with them",
        "author_1"),
    Quote("Learn as if you will live forever, live like you will die tomorrow.",
        "author_2"),
    Quote("Either you run the day or the day runs you.", "author_3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote,
                  () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
