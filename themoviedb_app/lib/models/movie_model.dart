import 'package:json_annotation/json_annotation.dart';
part 'movie_model.g.dart';


@JsonSerializable(explicitToJson: true)
class Movies {
  final int page;
  final String next;
  final int entries;
  final List<Result> results;
  Movies({
    required this.page,
    required this.next,
    required this.entries,
    required this.results,
  });
  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: "_id")
  final String id;
  @JsonKey(name: "id")
  final String imdbID;
  final RatingsSummary ratingsSummary;
  final Episodes episodes;
  final PrimaryImage primaryImage;
  final TitleType titleType;
  final Genres genres;
  final TitleText titleText;
  final OriginalTitleText originalTitleText;
  final ReleaseYear releaseYear;
  final ReleaseDate releaseDate;
  final Runtime runtime;
  final int? series;
  final MeterRanking? meterRanking;
  final Plot plot;
  final int position;
  Result({
    required this.id,
    required this.imdbID,
    required this.ratingsSummary,
    required this.episodes,
    required this.primaryImage,
    required this.titleType,
    required this.genres,
    required this.titleText,
    required this.originalTitleText,
    required this.releaseYear,
    required this.releaseDate,
    required this.runtime,
    required this.series,
    required this.meterRanking,
    required this.plot,
    required this.position,
  });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
@JsonSerializable()
class RatingsSummary {
  final double aggregateRating;
  final int? voteCount;
  final String? typename;
  RatingsSummary({
    required this.aggregateRating,
    required this.voteCount,
    required this.typename,
  });
  factory RatingsSummary.fromJson(Map<String, dynamic> json) => _$RatingsSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsSummaryToJson(this);
}
@JsonSerializable()
class Episodes {
  final TotalEpisodes episodes;
  final List<Season> seasons;
  final List<Year> years;
  final TotalEpisodes totalEpisodes;
  final TopRated topRated;
  final String? typename;
  Episodes({
    required this.episodes,
    required this.seasons,
    required this.years,
    required this.totalEpisodes,
    required this.topRated,
    required this.typename,
  });
  factory Episodes.fromJson(Map<String, dynamic> json) => _$EpisodesFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodesToJson(this);
}


@JsonSerializable()
class Season {
  final int number;
  final String? typename;
  Season({
    required this.number,
    required this.typename,
  });
 factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}

@JsonSerializable()
class Year {
  final int year;
  final String? typename;
  Year({
    required this.year,
    required this.typename,
  });
 factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);

  Map<String, dynamic> toJson() => _$YearToJson(this);
}

@JsonSerializable()
class TotalEpisodes {
  final int total;
  final String? typename;
  TotalEpisodes({
    required this.total,
    required this.typename,
  });
 factory TotalEpisodes.fromJson(Map<String, dynamic> json) => _$TotalEpisodesFromJson(json);

  Map<String, dynamic> toJson() => _$TotalEpisodesToJson(this);
}



@JsonSerializable()
class TopRated {
  final List<Edge> edges;
  final String? typename;
  TopRated({
    required this.edges,
    required this.typename,
  });
 factory TopRated.fromJson(Map<String, dynamic> json) => _$TopRatedFromJson(json);

  Map<String, dynamic> toJson() => _$TopRatedToJson(this);
}

@JsonSerializable()
class Edge {
  final Node node;
  final String? typename;
  Edge({
    required this.node,
    required this.typename,
  });
   factory Edge.fromJson(Map<String, dynamic> json) => _$EdgeFromJson(json);

  Map<String, dynamic> toJson() => _$EdgeToJson(this);
}

@JsonSerializable()
class Node {
  final RatingsSummary ratingsSummary;
  final String? typename;
  Node({
    required this.ratingsSummary,
    required this.typename,
  });
  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeToJson(this);
}


@JsonSerializable()
class PrimaryImage {
  final String id;
  final int width;
  final int height;
  final String url;
  final Caption caption;
  final String? typename;
  PrimaryImage({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.caption,
    required this.typename,
  });
  factory PrimaryImage.fromJson(Map<String, dynamic> json) => _$PrimaryImageFromJson(json);

  Map<String, dynamic> toJson() => _$PrimaryImageToJson(this);
}

@JsonSerializable()
class Caption {
  final String plainText;
  final String? typename;
  Caption({
    required this.plainText,
    required this.typename,
  });
  factory Caption.fromJson(Map<String, dynamic> json) => _$CaptionFromJson(json);

  Map<String, dynamic> toJson() => _$CaptionToJson(this);
}

@JsonSerializable()
class TitleType {
  final String text;
  final String id;
  final bool isSeries;
  final bool isEpisode;
  final String? typename;
  TitleType({
    required this.text,
    required this.id,
    required this.isSeries,
    required this.isEpisode,
    required this.typename,
  });
  factory TitleType.fromJson(Map<String, dynamic> json) => _$TitleTypeFromJson(json);

  Map<String, dynamic> toJson() => _$TitleTypeToJson(this);
}

@JsonSerializable()
class Genres {
  final List<Genre> genres;
  final String? typename;
  Genres({
    required this.genres,
    required this.typename,
  });
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

@JsonSerializable()
class Genre {
  final String text;
  final String id;
  final String? typename;
  Genre({
    required this.text,
    required this.id,
    required this.typename,
  });
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class TitleText {
  final String text;
  final String? typename;
  TitleText({
    required this.text,
    required this.typename,
  });

  factory TitleText.fromJson(Map<String, dynamic> json) => _$TitleTextFromJson(json);

  Map<String, dynamic> toJson() => _$TitleTextToJson(this);
}

@JsonSerializable()
class OriginalTitleText {
  final String text;
  final String? typename;
  OriginalTitleText({
    required this.text,
    required this.typename,
  });

  factory OriginalTitleText.fromJson(Map<String, dynamic> json) => _$OriginalTitleTextFromJson(json);

  Map<String, dynamic> toJson() => _$OriginalTitleTextToJson(this);
}

@JsonSerializable()
class ReleaseYear {
  final int year;
  final int endYear;
  final String? typename;
  ReleaseYear({
    required this.year,
    required this.endYear,
    required this.typename,
  });
  factory ReleaseYear.fromJson(Map<String, dynamic> json) => _$ReleaseYearFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseYearToJson(this);
}

@JsonSerializable()
class ReleaseDate {
  final int day;
  final int month;
  final int year;
  final String? 
typename;
  ReleaseDate({
    required this.day,
    required this.month,
    required this.year,
    required this.typename,
  });

    factory ReleaseDate.fromJson(Map<String, dynamic> json) => _$ReleaseDateFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseDateToJson(this);
}

@JsonSerializable()
class Runtime {
  final int seconds;
  final String? typename;
  Runtime({
    required this.seconds,
    required this.typename,
  });
    factory Runtime.fromJson(Map<String, dynamic> json) => _$RuntimeFromJson(json);

  Map<String, dynamic> toJson() => _$RuntimeToJson(this);
}


@JsonSerializable()
class MeterRanking {
  final int currentRank;
  final RankChange rankChange;
  final String? typename;
  MeterRanking({
    required this.currentRank,
    required this.rankChange,
    required this.typename,
  });
    factory MeterRanking.fromJson(Map<String, dynamic> json) => _$MeterRankingFromJson(json);

  Map<String, dynamic> toJson() => _$MeterRankingToJson(this);
}

@JsonSerializable()
class RankChange {
  final String changeDirection;
  final int difference;
  final String? typename;
  RankChange({
    required this.changeDirection,
    required this.difference,
    required this.typename,
  });
    factory RankChange.fromJson(Map<String, dynamic> json) => _$RankChangeFromJson(json);

  Map<String, dynamic> toJson() => _$RankChangeToJson(this);
}

@JsonSerializable()
class Plot {
  final PlotText plotText;
  final Language language;
  final String? typename;
  Plot({
    required this.plotText,
    required this.language,
    required this.typename,
  });
    factory Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);

  Map<String, dynamic> toJson() => _$PlotToJson(this);
}

@JsonSerializable()
class PlotText {
  final String plainText;
  final String? typename;
  PlotText({
    required this.plainText,
    required this.typename,
  });
    factory PlotText.fromJson(Map<String, dynamic> json) => _$PlotTextFromJson(json);

  Map<String, dynamic> toJson() => _$PlotTextToJson(this);
}

@JsonSerializable()
class Language {
  final String id;
  final String? typename;
  Language({
    required this.id,
    required this.typename,
  });
    factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}