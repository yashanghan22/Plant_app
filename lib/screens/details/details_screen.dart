import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/DetailPage_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailPageBody(),
    );
  }
}
