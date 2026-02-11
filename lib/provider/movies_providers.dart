import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/config/global.dart';
import 'package:movies/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apikey;
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'en-US';

	List<Movie> onDisplayMovies = [];
	List<Movie> popularMovies = [];

  MoviesProvider() : _apikey = GlobalConfig().tmdbToken {
    getNowPlayingMovies();
		getPopularMovies();
  }

  getNowPlayingMovies() async {
    if (_apikey.isEmpty) {
      print('TMDB token is not set. Please check your .env file.');
      return;
    }

    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'language': _language,
      'page': '1'
    });

    final response = await http.get(url, headers: { 'Authorization': 'Bearer $_apikey' });

    if (response.statusCode == 200) {
			final Map<String, dynamic> decodeData = jsonDecode(response.body);
      final nowPlayingResponse = NowPlayingResponse.fromJson(decodeData);

			onDisplayMovies = nowPlayingResponse.results;
			notifyListeners();
    } else {
      print('Failed to load movies. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

	getPopularMovies() async {
    if (_apikey.isEmpty) {
      print('TMDB token is not set. Please check your .env file.');
      return;
    }

    var url = Uri.https(_baseUrl, '3/movie/popular', {
      'language': _language,
      'page': '1'
    });

    final response = await http.get(url, headers: { 'Authorization': 'Bearer $_apikey' });
		print(response);
    if (response.statusCode == 200) {
			final Map<String, dynamic> decodeData = jsonDecode(response.body);
      final popularResponse = PopularResponse.fromJson(decodeData);

			popularMovies = [...popularMovies, ...popularResponse.results];
			notifyListeners();
    } else {
      print('Failed to load movies. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
	}
}