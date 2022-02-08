import 'package:flutter/material.dart';
import 'package:responsive_row/responsive_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ResponsiveRow.builder(
            itemCount: 10,
            itemBuilder: (index) {
              return ResponsiveCol(
                lg: Sizes.col3,
                md: Sizes.col6,
                sm: Sizes.col12,
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          ResponsiveRow(
            alignment: WrapAlignment.spaceBetween,
            children: [
              ResponsiveCol(
                sm: Sizes.col12,
                md: Sizes.col12,
                lg: Sizes.col12,
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
