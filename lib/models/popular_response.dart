import 'dart:convert';
import 'package:movies/models/movie.dart';

class PopularResponse {
    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    PopularResponse({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory PopularResponse.fromRawJson(String str) => PopularResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PopularResponse.fromJson(Map<String, dynamic> json) => PopularResponse(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

enum OriginalLanguage {
    EN,
    ZH
}

final originalLanguageValues = EnumValues({
    "en": OriginalLanguage.EN,
    "zh": OriginalLanguage.ZH
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
