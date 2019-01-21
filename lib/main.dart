import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image loading test'),
        ),
        body: buildLists(),
      ),
    );
  }

  Widget buildLists() {
    final imageUrls1 = [
      'https://via.placeholder.com/2000',
      'https://via.placeholder.com/2001',
      'https://via.placeholder.com/2002',
    ];
    final imageUrls2 = [
      'https://via.placeholder.com/2003',
      'https://via.placeholder.com/2004',
      'https://via.placeholder.com/2005',
    ];

    return Column(
      children: <Widget>[
        buildList(imageUrls1),
        buildList(imageUrls2),
      ],
    );
  }

  buildList(List<String> urls) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: urls.length,
          itemBuilder: (context, index) {
        return Image.network(
          urls[index],
          height: 130,
          width: 130,
        );
      }),
    );
  }
}



