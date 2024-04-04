import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard(this.quote,this.delete);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: delete,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0.0,
                shadowColor: Colors.white,
              ),
              icon: Icon(
                  Icons.delete,
                color: Colors.black54,
              ),
              label: Text(
                'Delete Quote',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
