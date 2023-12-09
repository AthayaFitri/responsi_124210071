// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import '../utils/meal_detail.dart';

class DetailsPage extends StatelessWidget {
  final DetailNew mealDetail;
  final String id;

  const DetailsPage({super.key, required this.mealDetail, required this.id});

  Future<void> _launchURL(String? youtubeURL) async {
    if (youtubeURL != null) {
      Uri uri = Uri.parse(youtubeURL);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        print('Could not launch $youtubeURL');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mealDetail.title ?? 'Meal Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (mealDetail.image != null)
                Image.network(
                  mealDetail.image!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              const SizedBox(height: 16),
              Text(
                'Category: ${mealDetail.category ?? "N/A"}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Area: ${mealDetail.area ?? "N/A"}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ingredients:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _buildIngredientsList(mealDetail),
              const SizedBox(height: 16),
              const Text(
                'Instructions:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(mealDetail.instruction ?? 'No instructions available.'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _launchURL(mealDetail.youtube);
                },
                child: const Text('Watch Tutorial'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIngredientsList(DetailNew mealDetail) {
    List<Widget> ingredientsWidgets = [];
    for (int i = 1; i <= 20; i++) {
      final ingredient = mealDetail.getIngredient(i);
      final measure = mealDetail.getMeasure(i);

      if (ingredient == null || ingredient.isEmpty) {
        continue; // Skip ingredients with null or empty values
      }

      ingredientsWidgets.add(
        Row(
          children: [
            Expanded(
              child: Text(
                '$ingredient: ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            if (measure != null && measure.isNotEmpty)
              Expanded(
                child: Text(
                  measure,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
          ],
        ),
      );
    }
    return Column(children: ingredientsWidgets);
  }
}
