import 'package:flutter/material.dart';
import 'package:learn_provider/provider/favourit_provider.dart';
import 'package:provider/provider.dart';

class FavouritExample extends StatefulWidget {
  const FavouritExample({super.key});

  @override
  State<FavouritExample> createState() => _FavouritExampleState();
}

class _FavouritExampleState extends State<FavouritExample> {
  // List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Consumer<FavouritProvider>(
                    builder: ((context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    leading: Text('$index'),
                    trailing: Icon(value.selectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_outline),
                  );
                }));
              })
        ],
      )),
    );
  }
}
