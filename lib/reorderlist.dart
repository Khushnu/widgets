import 'package:flutter/material.dart';

class ReorderList extends StatefulWidget {
  const ReorderList({super.key});

  @override
  State<ReorderList> createState() => _ReorderListState();
}

class _ReorderListState extends State<ReorderList> {
  List<int> items = List.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reorder List'),),
      body: ReorderableListView(
        children: List.generate(items.length, (index) {
          return ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd ? Colors.teal : Colors.grey, 
            title: Text('${items[index]}'),
            trailing: Icon(Icons.drag_handle),
          );
        }),
        onReorder: (int oldIndex, int newIndex){
          setState(() {
            if(oldIndex < newIndex){
              newIndex -= 1; 
             
            }
             final int item = items.removeAt(oldIndex); 
              items.insert(newIndex, item);
          });
         },
      ),
    );
  }
}