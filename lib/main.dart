import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Kevin Mulugu'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Kevv Kevv'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'John Doe')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => CardQuote(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
          )).toList(),
        ),
      ),
    );
  }
}



