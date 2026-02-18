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

	int _popularPage = 0;

  MoviesProvider() : _apikey = GlobalConfig().tmdbToken {
    getNowPlayingMovies();
		getPopularMovies();
  }

	Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    if (_apikey.isEmpty) {
      print('TMDB token is not set. Please check your .env file.');
			return '';
    }

    var url = Uri.https(_baseUrl, endpoint, {
      'language': _language,
      'page': '$page'
    });

    final response = await http.get(url, headers: { 'Authorization': 'Bearer $_apikey' });

		return response.body;
	}

  getNowPlayingMovies() async {
    final response = await this._getJsonData('3/movie/now_playing');

		final Map<String, dynamic> decodeData = jsonDecode(response);
		final nowPlayingResponse = NowPlayingResponse.fromJson(decodeData);

		onDisplayMovies = nowPlayingResponse.results;
		notifyListeners();
  }

	getPopularMovies() async {
		_popularPage++;
    final response = await this._getJsonData('3/movie/popular', _popularPage);

		final Map<String, dynamic> decodeData = jsonDecode(response);
		final popularResponse = PopularResponse.fromJson(decodeData);

		popularMovies = [...popularMovies, ...popularResponse.results];
		notifyListeners();
	}
}