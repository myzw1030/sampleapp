import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'hello',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
              ],
            ),
          )),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://tegakisozai.com/wp-content/uploads/2019/05/hiyoko.png',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('みや@'),
                  SizedBox(
                    width: 8,
                  ),
                  Text('2023/10/17'),
                ],
              ),
              SizedBox(height: 4),
              Text('最高'),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
