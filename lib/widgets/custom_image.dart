import 'package:flutter/material.dart';
import 'package:task_app/controller/my_data.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Container(
        width: 310,
        height: 100,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.network(
          MyData.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
