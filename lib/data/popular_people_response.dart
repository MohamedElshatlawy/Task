import 'dart:developer';

class PopularPeopleResponse {
  int page;
  List<PeopleModel> results;
  int totalPages;
  int totalResults;

  PopularPeopleResponse(
      {this.page, this.results, this.totalPages, this.totalResults});

  PopularPeopleResponse.fromJson(Map<String, dynamic> json) {
    page = json['page'];

    results = new List<PeopleModel>();
    json['results'].forEach((v) {
      results.add(new PeopleModel.fromJson(v));
    });

    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
}

class PeopleModel {
  bool adult;
  int gender;
  int id;
  List<KnownFor> knownFor;
  String knownForDepartment;
  String name;
  double popularity;
  String profilePath;

  PeopleModel(
      {this.adult,
      this.gender,
      this.id,
      this.knownFor,
      this.knownForDepartment,
      this.name,
      this.popularity,
      this.profilePath});

  PeopleModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];

    knownFor = new List<KnownFor>();
    json['known_for'].forEach((v) {
      knownFor.add(new KnownFor.fromJson(v));
    });

    knownForDepartment = json['known_for_department'];
    name = json['name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['gender'] = this.gender;
    data['id'] = this.id;
    if (this.knownFor != null) {
      data['known_for'] = this.knownFor.map((v) => v.toJson()).toList();
    }
    data['known_for_department'] = this.knownForDepartment;
    data['name'] = this.name;
    data['popularity'] = this.popularity;
    data['profile_path'] = this.profilePath;
    return data;
  }
}

class KnownFor {
  bool adult;
  String backdropPath;
  //List<int> genreIds;
  int id;
  String mediaType;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  String firstAirDate;
  String name;
  //List<String> originCountry;
  String originalName;

  KnownFor(
      {this.adult,
      this.backdropPath,
      // this.genreIds,
      this.id,
      this.mediaType,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
      this.firstAirDate,
      this.name,
      // this.originCountry,
      this.originalName});

  KnownFor.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    //genreIds = json['genre_ids'];
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = double.parse(json['vote_average'].toString());
    voteCount = json['vote_count'];
    firstAirDate = json['first_air_date'];
    name = json['name'];
    // originCountry = json['origin_country'];
    originalName = json['original_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    // data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['media_type'] = this.mediaType;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['first_air_date'] = this.firstAirDate;
    data['name'] = this.name;
    // data['origin_country'] = this.originCountry;
    data['original_name'] = this.originalName;
    return data;
  }
}
