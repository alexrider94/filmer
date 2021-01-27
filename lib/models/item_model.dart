class ItemModel {
  int _page;
  // ignore: non_constant_identifier_names
  int _total_results;
  // ignore: non_constant_identifier_names
  int _total_pages;
  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _total_results = parsedJson['total_results'];
    _total_pages = parsedJson['total_pages'];
    List<_Result> temp = [];

    for (int i = 0; i < parsedJson['results'].length; ++i) {
      _Result result = _Result(parsedJson['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;
  // ignore: non_constant_identifier_names
  int get total_pages => _total_pages;
  // ignore: non_constant_identifier_names
  int get total_results => _total_results;
  int get page => _page;
}

class _Result {
  // ignore: non_constant_identifier_names
  int _vote_count;
  int _id;
  bool _video;
  // ignore: non_constant_identifier_names
  var _vote_average;
  String _title;
  double _popularity;
  // ignore: non_constant_identifier_names
  String _poster_path;
  // ignore: non_constant_identifier_names
  String _original_language;
  // ignore: non_constant_identifier_names
  String _original_title;
  // ignore: non_constant_identifier_names
  List<int> _genre_ids = [];
  // ignore: non_constant_identifier_names
  String _backdrop_path;
  bool _adult;
  String _overview;
  // ignore: non_constant_identifier_names
  String _release_date;

  _Result(result) {
    _vote_count = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _vote_average = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];

    for (int i = 0; i < result['genre_ids'].length; ++i) {
      _genre_ids.add(result['genre_ids'][i]);
    }
    _backdrop_path = result['backdrop_path'];
    _adult = result['_adult'];
    _overview = result['_overview'];
    _release_date = result['_release_date'];
  }
  // ignore: non_constant_identifier_names
  String get release_date => _release_date;

  String get overview => _overview;

  bool get adult => _adult;
  // ignore: non_constant_identifier_names
  String get backdrop_path => _backdrop_path;
  // ignore: non_constant_identifier_names
  List<int> get genre_ids => _genre_ids;
  // ignore: non_constant_identifier_names
  String get original_title => _original_title;
  // ignore: non_constant_identifier_names
  String get original_language => _original_language;
  // ignore: non_constant_identifier_names
  String get poster_path => _poster_path;

  double get popularity => _popularity;

  String get title => _title;
  // ignore: non_constant_identifier_names
  double get vote_average => _vote_average;

  bool get video => _video;

  int get id => _id;
  // ignore: non_constant_identifier_names
  int get vote_count => _vote_count;
}
