import 'package:flutter/material.dart';

import '../api/api_source.dart';
import '../utils/meal_detail.dart';

class DetailsPage extends StatefulWidget {
  final String id;

  const DetailsPage({super.key, required this.id});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late Future<DetailNew> mealDetail;

  @override
  void initState() {
    mealDetail = ApiSource().getMealDetail(widget.id);
    super.initState();
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

      if (ingredient != null && measure != null) {
        ingredientsWidgets.add(
          Text('$ingredient: $measure'),
        );
      }
    }
    return Column(children: ingredientsWidgets);
  }
}
