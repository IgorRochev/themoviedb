import 'package:flutter/material.dart';
import 'package:themoviedb_app/resources/resources.dart';
import 'package:themoviedb_app/widgets/movie_list/movie_data.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final textController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filtred_movie_row_data = movie_row_data;
    textController.addListener(_search);
  }

  final movie_row_data = [
    movie_data(
        imageName: Images.chainsaw10,
        movieName: "Пила 10",
        time: "28 сентября 2023 г. ",
        movieDescription:
            "Джон Крамер отправляется в Мексику на экспериментальную операцию, надеясь излечиться рака, но в результате выясняет, что это всего лишь мошенничество и обман отчаявшихся больных. Тогда мужчина решает покарать мошенников в своём фирменном стиле — при помощи хитроумных жестоких ловушек."),
    movie_data(
        imageName: Images.cocosecret,
        movieName: "Тайна Коко",
        time: "23 ноября 2017 г.",
        movieDescription:
            "12-летний Мигель живет в мексиканской деревушке в семье сапожников и тайно мечтает стать музыкантом. Тайно — потому что в его семейном клане музыка считается проклятием. Когда-то его прадед оставил свою жену, прабабку Мигеля, ради мечты, которая теперь не дает спокойно жить Мигелю. С тех пор музыкальная тема в семье стала табу. Мигель обнаруживает, что между ним и его любимым певцом Эрнесто де ла Крусом, ныне покойным, существует некая — пока неназванная — связь. Паренек отправляется к своему кумиру в Страну Мертвых, где встречает души своих предков. Коко знакомится там с духом-трикстером по имени Эктор (в облике скелета), который становится его напарником-проводником. Вдвоем они отправляются на поиски де ла Круса."),
    movie_data(
        imageName: Images.fastnfurious10,
        movieName: "Форсаж 10",
        time: "18 мая 2023 г.",
        movieDescription:
            "Десятая и финальная часть франшизы, повествующей о несравненном уличном гонщике Доминике Торетто и его команде. И как всегда дело не обойдется без роскошных машин, бешенных скоростей и невероятно опасных приключений."),
    movie_data(
        imageName: Images.granturismo,
        movieName: "Гран Туризмо",
        time: "10 августа 2023 г.",
        movieDescription:
            "Заядлый геймер Янн Марденборо, несостоявшийся автогонщик Джейк Солтер и идейный маркетолог Дэнни Мур вместе рискнут всем, чтобы найти своё место в самом элитном виде спорта."),
    movie_data(
        imageName: Images.retribution,
        movieName: "Заложники",
        time: "24 августа 2023 г.",
        movieDescription:
            "Обычное утро обернулось настоящей катастрофой: отвозя детей в школу, Мэтт обнаружил бомбу у себя в машине. Чтобы выжить, ему придется слепо следовать всем инструкциям, которые отдает неизвестный. Правило только одно — не покидать транспортное средство. Но как далеко за черту закона готов зайти обычный бизнесмен? Чтобы спасти детей, сегодня ему придется нарушить все правила."),
    movie_data(
        imageName: Images.unstoppable4,
        movieName: "Неудержимые 4",
        time: "21 сентября 2023 г.",
        movieDescription:
            "Неудержимые несут потери: Барни Росс выбывает из строя, а Ли Кристмас отстранен от будущих операций. В команду набирают новых бойцов и отправляют возмещать ущерб. Но и они терпят поражение и попадают в плен. Теперь Ли Кристмас должен в одиночку пробраться в логово противника и освободить команду, попутно предотвратив глобальную катастрофу. Только так можно спасти мир и восстановить репутацию Неудержимых.")
  ];

  var filtred_movie_row_data = <movie_data>[];

  void _search() {
    final text = textController.text;
    if (text.isNotEmpty) {
      filtred_movie_row_data = movie_row_data
          .where((movie_data movie) =>
              movie.movieName.toLowerCase().contains(text.toLowerCase()))
          .toList();
    } else {
      filtred_movie_row_data = movie_row_data;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
          itemCount: filtred_movie_row_data.length,
          itemExtent: 163,
          padding: EdgeInsets.only(top: 70),
          itemBuilder: (BuildContext context, int index) {
            final movie = filtred_movie_row_data[index];
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
                        Image(
                          image: AssetImage(movie.imageName),
                        ),
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
                                movie.movieName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(movie.time,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.movieDescription,
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

  void _onTap() {
    final navigator = Navigator.of(context);
    navigator.pushNamed("/film");
  }
}
