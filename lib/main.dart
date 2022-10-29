import 'package:flutter/material.dart';
import 'package:google_map_features_all/presentation/screens/google_highlighted_position.dart';
import 'package:google_map_features_all/presentation/screens/live_location.dart';
import 'package:google_map_features_all/presentation/screens/polyline_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: GoogleMapScreen(),
    );
  }
}
