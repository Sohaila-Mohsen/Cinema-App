import 'package:flutter/foundation.dart';

class MovieCategory {
  String? emoji;
  String? categoryName;
  MovieCategory(this.categoryName, this.emoji);
  static MovieCategory findCategory(String CatName) {
    for (int i = 0; i < catigories.length; i++) {
      if (CatName.toLowerCase() == catigories[i].categoryName!.toLowerCase())
        return catigories[i];
    }
    return MovieCategory(
      "Undermined",
      "❔",
    );
  }
}

List<MovieCategory> catigories = [
  MovieCategory(
    "Comedy",
    "😂",
  ),
  MovieCategory(
    "Romance",
    "❤",
  ),
  MovieCategory(
    "Horor",
    "😱",
  ),
  MovieCategory(
    "Drama",
    "😗",
  ),
  MovieCategory(
    "Science Fiction",
    "🔬",
  ),
  MovieCategory(
    "Decumentary",
    "📰",
  ),
];
