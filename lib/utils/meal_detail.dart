class DetailNew {
  final String? id;
  final String? title;
  final String? image;
  final String? drink;
  final String? category;
  final String? area;
  final String? instruction;
  final String? tag;
  final String? youtube;
  final String? ingre1;
  final String? ingre2;
  final String? ingre3;
  final String? ingre4;
  final String? ingre5;
  final String? ingre6;
  final String? ingre7;
  final String? ingre8;
  final String? ingre9;
  final String? ingre10;
  final String? ingre11;
  final String? ingre12;
  final String? ingre13;
  final String? ingre14;
  final String? ingre15;
  final String? ingre16;
  final String? ingre17;
  final String? ingre18;
  final String? ingre19;
  final String? ingre20;
  final String? measure1;
  final String? measure2;
  final String? measure3;
  final String? measure4;
  final String? measure5;
  final String? measure6;
  final String? measure7;
  final String? measure8;
  final String? measure9;
  final String? measure10;
  final String? measure11;
  final String? measure12;
  final String? measure13;
  final String? measure14;
  final String? measure15;
  final String? measure16;
  final String? measure17;
  final String? measure18;
  final String? measure19;
  final String? measure20;
  final String? source;
  final String? imgSource;
  final String? confirm;
  final String? date;

  DetailNew({
    this.id,
    this.title,
    this.image,
    this.drink,
    this.category,
    this.area,
    this.instruction,
    this.tag,
    this.youtube,
    this.ingre1,
    this.ingre2,
    this.ingre3,
    this.ingre4,
    this.ingre5,
    this.ingre6,
    this.ingre7,
    this.ingre8,
    this.ingre9,
    this.ingre10,
    this.ingre11,
    this.ingre12,
    this.ingre13,
    this.ingre14,
    this.ingre15,
    this.ingre16,
    this.ingre17,
    this.ingre18,
    this.ingre19,
    this.ingre20,
    this.measure1,
    this.measure2,
    this.measure3,
    this.measure4,
    this.measure5,
    this.measure6,
    this.measure7,
    this.measure8,
    this.measure9,
    this.measure10,
    this.measure11,
    this.measure12,
    this.measure13,
    this.measure14,
    this.measure15,
    this.measure16,
    this.measure17,
    this.measure18,
    this.measure19,
    this.measure20,
    this.source,
    this.imgSource,
    this.confirm,
    this.date,
  });

  factory DetailNew.fromJson(Map<String, dynamic> json) {
    return DetailNew(
      id: json['idMeal'] as String?,
      title: json['strMeal'] as String?,
      image: json['strMealThumb'] as String?,
      drink: json['strDrinkAlternate'] as String?,
      category: json['strCategory'] as String?,
      area: json['strArea'] as String?,
      instruction: json['strInstructions'] as String?,
      tag: json['strTags'] as String?,
      youtube: json['strYoutube'] as String?,
      ingre1: json['strIngredient1'] as String?,
      ingre2: json['strIngredient2'] as String?,
      ingre3: json['strIngredient3'] as String?,
      ingre4: json['strIngredient4'] as String?,
      ingre5: json['strIngredient5'] as String?,
      ingre6: json['strIngredient6'] as String?,
      ingre7: json['strIngredient7'] as String?,
      ingre8: json['strIngredient8'] as String?,
      ingre9: json['strIngredient9'] as String?,
      ingre10: json['strIngredient10'] as String?,
      ingre11: json['strIngredient11'] as String?,
      ingre12: json['strIngredient12'] as String?,
      ingre13: json['strIngredient13'] as String?,
      ingre14: json['strIngredient14'] as String?,
      ingre15: json['strIngredient15'] as String?,
      ingre16: json['strIngredient16'] as String?,
      ingre17: json['strIngredient17'] as String?,
      ingre18: json['strIngredient18'] as String?,
      ingre19: json['strIngredient19'] as String?,
      ingre20: json['strIngredient20'] as String?,
      measure1: json['strMeasure1'] as String?,
      measure2: json['strMeasure2'] as String?,
      measure3: json['strMeasure3'] as String?,
      measure4: json['strMeasure4'] as String?,
      measure5: json['strMeasure5'] as String?,
      measure6: json['strMeasure6'] as String?,
      measure7: json['strMeasure7'] as String?,
      measure8: json['strMeasure8'] as String?,
      measure9: json['strMeasure9'] as String?,
      measure10: json['strMeasure10'] as String?,
      measure11: json['strMeasure11'] as String?,
      measure12: json['strMeasure12'] as String?,
      measure13: json['strMeasure13'] as String?,
      measure14: json['strMeasure14'] as String?,
      measure15: json['strMeasure15'] as String?,
      measure16: json['strMeasure16'] as String?,
      measure17: json['strMeasure17'] as String?,
      measure18: json['strMeasure18'] as String?,
      measure19: json['strMeasure19'] as String?,
      measure20: json['strMeasure20'] as String?,
      source: json['strSource'] as String?,
      imgSource: json['strImageSource'] as String?,
      confirm: json['strCreativeCommonsConfirmed'] as String?,
      date: json['dateModified'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idMeal': id,
      'strMeal': title,
      'strMealThumb': image,
      'strDrinkAlternate': drink,
      'strCategory': category,
      'strArea': area,
      'strInstructions': instruction,
      'strTags': tag,
      'strYoutube': youtube,
      'strIngredient1': ingre1,
      'strIngredient2': ingre2,
      'strIngredient3': ingre3,
      'strIngredient4': ingre4,
      'strIngredient5': ingre5,
      'strIngredient6': ingre6,
      'strIngredient7': ingre7,
      'strIngredient8': ingre8,
      'strIngredient9': ingre9,
      'strIngredient10': ingre10,
      'strIngredient11': ingre11,
      'strIngredient12': ingre12,
      'strIngredient13': ingre13,
      'strIngredient14': ingre14,
      'strIngredient15': ingre15,
      'strIngredient16': ingre16,
      'strIngredient17': ingre17,
      'strIngredient18': ingre18,
      'strIngredient19': ingre19,
      'strIngredient20': ingre20,
      'strMeasure1': measure1,
      'strMeasure2': measure2,
      'strMeasure3': measure3,
      'strMeasure4': measure4,
      'strMeasure5': measure5,
      'strMeasure6': measure6,
      'strMeasure7': measure7,
      'strMeasure8': measure8,
      'strMeasure9': measure9,
      'strMeasure10': measure10,
      'strMeasure11': measure11,
      'strMeasure12': measure12,
      'strMeasure13': measure13,
      'strMeasure14': measure14,
      'strMeasure15': measure15,
      'strMeasure16': measure16,
      'strMeasure17': measure17,
      'strMeasure18': measure18,
      'strMeasure19': measure19,
      'strMeasure20': measure20,
      'strSource': source,
      'strImageSource': imgSource,
      'strCreativeCommonsConfirmed': confirm,
      'dateModified': date,
    };
  }

  getIngredient(int i) {}

  getMeasure(int i) {}
}
