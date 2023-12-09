class CategoryNew {
  final String? id;
  final String? category;
  final String? image;
  final String? desc;

  CategoryNew({
    this.id,
    this.category,
    this.image,
    this.desc,
  });

  CategoryNew.fromJson(Map<String, dynamic> json)
      : id = json['idCategory'] as String?,
        category = json['strCategory'] as String?,
        image = json['strCategoryThumb'] as String?,
        desc = json['strCategoryDescription'] as String?;

  Map<String, dynamic> toJson() => {
        'idCategory': id,
        'strCategory': category,
        'strCategoryThumb': image,
        'strCategoryDescription': desc,
      };
}
