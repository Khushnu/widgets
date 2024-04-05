// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = ScrollController();
  int _currentCategoryIndex = 0;
  List<String> _categories = ['Category 1', 'Category 2', 'Category 3', 'Category 4', 'Category 5', 'Category 6'];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    double scrollOffset = _scrollController.offset;
    double itemExtent = 50.0; // Adjust according to your list item height
    int index = (scrollOffset / itemExtent).floor();
    setState(() {
      _currentCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom ListView with Indicator and Stepper'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _categories.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_categories[index]),
                );
              },
            ),
          ),
          SizedBox(
            height: 50.0, // Adjust height according to your need
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentCategoryIndex = index;
                      double newPosition = index * 50.0; // Adjust according to your list item height
                      _scrollController.animateTo(newPosition,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _currentCategoryIndex == index
                          ? Colors.blue
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      _categories[index],
                      style: TextStyle(
                        color: _currentCategoryIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Stepper(
            currentStep: _currentCategoryIndex,
            steps: _categories
                .map(
                  (category) => Step(
                    title: Text(category),
                    content: SizedBox.shrink(),
                  ),
                )
                .toList(),
            controlsBuilder: (_,
                 onStepCancel) {
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
