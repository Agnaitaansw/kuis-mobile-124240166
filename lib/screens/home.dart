import 'package:flutter/material.dart';
import 'package:kuis/models/data.dart';
import 'package:kuis/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoeCatalog.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(shoe: shoeCatalog[index])),
            );
          },
          title: Text(shoeCatalog[index].shoeName),
          subtitle: Text(" ${shoeCatalog[index].price}"),
          leading: Image.network(shoeCatalog[index].image),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}