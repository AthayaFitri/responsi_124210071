class MealNew {
  final String? id;
  final String? title;
  final String? image;

  MealNew({
    this.id,
    this.title,
    this.image,
  });

  MealNew.fromJson(Map<String, dynamic> json)
      : id = json['idMeal'] as String?,
        title = json['strMeal'] as String?,
        image = json['strMealThumb'] as String?;

  Map<String, dynamic> toJson() => {
        'idMeal': id,
        'strMeal': title,
        'strMealThumb': image,
      };
}
