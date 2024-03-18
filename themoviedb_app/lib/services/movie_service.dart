import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:themoviedb_app/models/api_response.dart';
import 'package:themoviedb_app/models/movie_model.dart';

class MovieService {
  static const URL = 'https://moviesdatabase.p.rapidapi.com/titles?list=top_rated_series_250&info=base_info&limit=10';

  Future<APIResponse<List<Result>>> getAllMovies() {
    return http.get(Uri.parse(URL), headers: {'X-Rapidapi-Key' : '47442511cemsh0709b30d285d78ep1246eejsn4fe847c186f7', 'X-Rapidapi-Host' : 'moviesdatabase.p.rapidapi.com'}).then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body) as Map<String, dynamic>;
        final results = jsonData["results"] as List<dynamic>;
        List<Result> movies = results.map((e) => Result.fromJson(e as Map<String, dynamic> )).toList();
        return APIResponse<List<Result>>(data: movies);
      }
      return APIResponse<List<Result>>(
          isError: true, errorMessage: 'Error getting list of movies');
    }).catchError((_) => APIResponse<List<Result>>(
        isError: true, errorMessage: 'Error getting list of movies'));
  }
}