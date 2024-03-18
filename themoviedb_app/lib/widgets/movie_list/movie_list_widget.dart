import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:themoviedb_app/models/api_response.dart';
import 'package:themoviedb_app/models/movie_model.dart';
import 'package:themoviedb_app/resources/resources.dart';
import 'package:themoviedb_app/services/movie_service.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final textController = TextEditingController();
  
  MovieService get service => GetIt.instance<MovieService>();
  late APIResponse<List<Result>> _response;
  List<Result>? movies;
  bool _isLoading = false;
  List<Result>? filtred_movie_row_data;

  @override
  void initState() {
    _fetchMovies();
    textController.addListener(_search);
    super.initState();
  }

  void _fetchMovies() async {
    setState(() {
      _isLoading = true;
    });

    _response = await service.getAllMovies();
    movies = _response.data;
    filtred_movie_row_data = movies;
    setState(() {
      _isLoading = false; 
    });
  }

  void _search() {
    final text = textController.text;
    if (text.isNotEmpty && movies != null) {
      filtred_movie_row_data = movies!.where((element) => element.titleText.text.toLowerCase().contains(text.toLowerCase())).toList();
    } else {
      filtred_movie_row_data = movies;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (_isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
        if (_response.isError) {
            return Center(
              child: Text(_response.errorMessage.toString()),
            );
          }
        return Stack(children: [
          ListView.builder(
              itemCount: filtred_movie_row_data != null ? filtred_movie_row_data!.length : 0,
              itemExtent: 163,
              padding: EdgeInsets.only(top: 70),
              itemBuilder: (BuildContext context, int index) {
                final movie = filtred_movie_row_data!.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Stack(
                    children: [
                      Container(  
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        clipBehavior: Clip.hardEdge,
                        child: Row(
                          children: [
                            Image.network(movie.primaryImage.url, fit: BoxFit.cover,  height: 163, width: 100, 
                            errorBuilder: (context, error, stackTrace) =>  
                              const Image(image: AssetImage(Images.placeholder), fit: BoxFit.cover, height: 163, width: 100,),
                            loadingBuilder: (context, child, loadingProgress) {
                                        if (loadingProgress == null) {
                  return child;
                }
                              return Container(child: Container(child: CircularProgressIndicator(), width: 50, height: 50,), height: 163, width: 100, alignment: Alignment.center,);
                              
                            },
                            ),
                            // Image(
                            //   image: AssetImage(movie.imageName),
                            // ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.titleText.text,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('${movie.releaseDate.day}.${movie.releaseDate.month}.${movie.releaseDate.year}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.plot.plotText.plainText,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          onTap: _onTap,
                        ),
                      ),
                    ],
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  labelText: "Поиск",
                  filled: true,
                  fillColor: Colors.white.withAlpha(235),
                  border: OutlineInputBorder()),
            ),
          ),
        ]);
      }
    );
  }

  void _onTap() {
    final navigator = Navigator.of(context);
    navigator.pushNamed("/film");
  }
}
