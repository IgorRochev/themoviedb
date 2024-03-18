// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) => Movies(
      page: json['page'] as int,
      next: json['next'] as String,
      entries: json['entries'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'page': instance.page,
      'next': instance.next,
      'entries': instance.entries,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['_id'] as String,
      imdbID: json['id'] as String,
      ratingsSummary: RatingsSummary.fromJson(
          json['ratingsSummary'] as Map<String, dynamic>),
      episodes: Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      primaryImage:
          PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
      titleType: TitleType.fromJson(json['titleType'] as Map<String, dynamic>),
      genres: Genres.fromJson(json['genres'] as Map<String, dynamic>),
      titleText: TitleText.fromJson(json['titleText'] as Map<String, dynamic>),
      originalTitleText: OriginalTitleText.fromJson(
          json['originalTitleText'] as Map<String, dynamic>),
      releaseYear:
          ReleaseYear.fromJson(json['releaseYear'] as Map<String, dynamic>),
      releaseDate:
          ReleaseDate.fromJson(json['releaseDate'] as Map<String, dynamic>),
      runtime: Runtime.fromJson(json['runtime'] as Map<String, dynamic>),
      series: json['series'] as int?,
      meterRanking: json['meterRanking'] == null
          ? null
          : MeterRanking.fromJson(json['meterRanking'] as Map<String, dynamic>),
      plot: Plot.fromJson(json['plot'] as Map<String, dynamic>),
      position: json['position'] as int,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      '_id': instance.id,
      'id': instance.imdbID,
      'ratingsSummary': instance.ratingsSummary,
      'episodes': instance.episodes,
      'primaryImage': instance.primaryImage,
      'titleType': instance.titleType,
      'genres': instance.genres,
      'titleText': instance.titleText,
      'originalTitleText': instance.originalTitleText,
      'releaseYear': instance.releaseYear,
      'releaseDate': instance.releaseDate,
      'runtime': instance.runtime,
      'series': instance.series,
      'meterRanking': instance.meterRanking,
      'plot': instance.plot,
      'position': instance.position,
    };

RatingsSummary _$RatingsSummaryFromJson(Map<String, dynamic> json) =>
    RatingsSummary(
      aggregateRating: (json['aggregateRating'] as num).toDouble(),
      voteCount: json['voteCount'] as int?,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$RatingsSummaryToJson(RatingsSummary instance) =>
    <String, dynamic>{
      'aggregateRating': instance.aggregateRating,
      'voteCount': instance.voteCount,
      'typename': instance.typename,
    };

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      episodes:
          TotalEpisodes.fromJson(json['episodes'] as Map<String, dynamic>),
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
      years: (json['years'] as List<dynamic>)
          .map((e) => Year.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalEpisodes:
          TotalEpisodes.fromJson(json['totalEpisodes'] as Map<String, dynamic>),
      topRated: TopRated.fromJson(json['topRated'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'episodes': instance.episodes,
      'seasons': instance.seasons,
      'years': instance.years,
      'totalEpisodes': instance.totalEpisodes,
      'topRated': instance.topRated,
      'typename': instance.typename,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      number: json['number'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'number': instance.number,
      'typename': instance.typename,
    };

Year _$YearFromJson(Map<String, dynamic> json) => Year(
      year: json['year'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$YearToJson(Year instance) => <String, dynamic>{
      'year': instance.year,
      'typename': instance.typename,
    };

TotalEpisodes _$TotalEpisodesFromJson(Map<String, dynamic> json) =>
    TotalEpisodes(
      total: json['total'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$TotalEpisodesToJson(TotalEpisodes instance) =>
    <String, dynamic>{
      'total': instance.total,
      'typename': instance.typename,
    };

TopRated _$TopRatedFromJson(Map<String, dynamic> json) => TopRated(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Edge.fromJson(e as Map<String, dynamic>))
          .toList(),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$TopRatedToJson(TopRated instance) => <String, dynamic>{
      'edges': instance.edges,
      'typename': instance.typename,
    };

Edge _$EdgeFromJson(Map<String, dynamic> json) => Edge(
      node: Node.fromJson(json['node'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$EdgeToJson(Edge instance) => <String, dynamic>{
      'node': instance.node,
      'typename': instance.typename,
    };

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      ratingsSummary: RatingsSummary.fromJson(
          json['ratingsSummary'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'ratingsSummary': instance.ratingsSummary,
      'typename': instance.typename,
    };

PrimaryImage _$PrimaryImageFromJson(Map<String, dynamic> json) => PrimaryImage(
      id: json['id'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String,
      caption: Caption.fromJson(json['caption'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$PrimaryImageToJson(PrimaryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'caption': instance.caption,
      'typename': instance.typename,
    };

Caption _$CaptionFromJson(Map<String, dynamic> json) => Caption(
      plainText: json['plainText'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$CaptionToJson(Caption instance) => <String, dynamic>{
      'plainText': instance.plainText,
      'typename': instance.typename,
    };

TitleType _$TitleTypeFromJson(Map<String, dynamic> json) => TitleType(
      text: json['text'] as String,
      id: json['id'] as String,
      isSeries: json['isSeries'] as bool,
      isEpisode: json['isEpisode'] as bool,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$TitleTypeToJson(TitleType instance) => <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
      'isSeries': instance.isSeries,
      'isEpisode': instance.isEpisode,
      'typename': instance.typename,
    };

Genres _$GenresFromJson(Map<String, dynamic> json) => Genres(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'genres': instance.genres,
      'typename': instance.typename,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      text: json['text'] as String,
      id: json['id'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
      'typename': instance.typename,
    };

TitleText _$TitleTextFromJson(Map<String, dynamic> json) => TitleText(
      text: json['text'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$TitleTextToJson(TitleText instance) => <String, dynamic>{
      'text': instance.text,
      'typename': instance.typename,
    };

OriginalTitleText _$OriginalTitleTextFromJson(Map<String, dynamic> json) =>
    OriginalTitleText(
      text: json['text'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$OriginalTitleTextToJson(OriginalTitleText instance) =>
    <String, dynamic>{
      'text': instance.text,
      'typename': instance.typename,
    };

ReleaseYear _$ReleaseYearFromJson(Map<String, dynamic> json) => ReleaseYear(
      year: json['year'] as int,
      endYear: json['endYear'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$ReleaseYearToJson(ReleaseYear instance) =>
    <String, dynamic>{
      'year': instance.year,
      'endYear': instance.endYear,
      'typename': instance.typename,
    };

ReleaseDate _$ReleaseDateFromJson(Map<String, dynamic> json) => ReleaseDate(
      day: json['day'] as int,
      month: json['month'] as int,
      year: json['year'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$ReleaseDateToJson(ReleaseDate instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'typename': instance.typename,
    };

Runtime _$RuntimeFromJson(Map<String, dynamic> json) => Runtime(
      seconds: json['seconds'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$RuntimeToJson(Runtime instance) => <String, dynamic>{
      'seconds': instance.seconds,
      'typename': instance.typename,
    };

MeterRanking _$MeterRankingFromJson(Map<String, dynamic> json) => MeterRanking(
      currentRank: json['currentRank'] as int,
      rankChange:
          RankChange.fromJson(json['rankChange'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$MeterRankingToJson(MeterRanking instance) =>
    <String, dynamic>{
      'currentRank': instance.currentRank,
      'rankChange': instance.rankChange,
      'typename': instance.typename,
    };

RankChange _$RankChangeFromJson(Map<String, dynamic> json) => RankChange(
      changeDirection: json['changeDirection'] as String,
      difference: json['difference'] as int,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$RankChangeToJson(RankChange instance) =>
    <String, dynamic>{
      'changeDirection': instance.changeDirection,
      'difference': instance.difference,
      'typename': instance.typename,
    };

Plot _$PlotFromJson(Map<String, dynamic> json) => Plot(
      plotText: PlotText.fromJson(json['plotText'] as Map<String, dynamic>),
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$PlotToJson(Plot instance) => <String, dynamic>{
      'plotText': instance.plotText,
      'language': instance.language,
      'typename': instance.typename,
    };

PlotText _$PlotTextFromJson(Map<String, dynamic> json) => PlotText(
      plainText: json['plainText'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$PlotTextToJson(PlotText instance) => <String, dynamic>{
      'plainText': instance.plainText,
      'typename': instance.typename,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      id: json['id'] as String,
      typename: json['typename'] as String?,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'id': instance.id,
      'typename': instance.typename,
    };
