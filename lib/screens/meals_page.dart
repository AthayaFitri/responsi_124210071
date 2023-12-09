import 'package:flutter/material.dart';

import '../api/api_source.dart';
import '../utils/meal.dart';
import 'details_page.dart';

class MealsPage extends StatefulWidget {
  final String category;
  const MealsPage({super.key, required this.category});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  late Future<List<MealNew>> _mealsData;

  @override
  void initState() {
    _mealsData = ApiSource().getMealsByCategory(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Meals in ${widget.category}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 12,
        ),
        child: _buildMealsList(),
      ),
    );
  }

  Widget _buildMealsList() {
    return FutureBuilder<List<MealNew>>(
      future: _mealsData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _buildMealListView(snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMealListView(List<MealNew> meals) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(meals[index].title ?? ''),
          leading: meals[index].image != null
              ? Image.network(
                  meals[index].image!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                )
              : null,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailsPage(mealDetail: meals[index]);
                },
              ),
            );
          },
        );
      },
    );
  }
}
