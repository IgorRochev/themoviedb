import 'package:flutter/material.dart';
import 'package:themoviedb_app/resources/resources.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Пила 10"),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  MovieImages(),
                  MovieNameWidget(),
                  ScoreWidget(),
                  AboutMovie(),
                  OveriewTitle(),
                  OverviewText(),
                  MovieWorkers(),
                ],
              ),
            )
          ],
        ));
  }
}

class MovieWorkers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Steffano Sollima",
                        style: TextStyle(color: Colors.white)),
                    Text("Director", style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text("Taylor", style: TextStyle(color: Colors.white)),
                    Text("Sound producer",
                        style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Taylor", style: TextStyle(color: Colors.white)),
                    Text("Sound producer",
                        style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text("Taylor", style: TextStyle(color: Colors.white)),
                    Text("Sound producer",
                        style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class OverviewText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Text(
          "Джон Крамер отправляется в Мексику на экспериментальную операцию, надеясь излечиться рака, но в результате выясняет, что это всего лишь мошенничество и обман отчаявшихся больных. Тогда мужчина решает покарать мошенников в своём фирменном стиле — при помощи хитроумных жестоких ловушек.",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class OveriewTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
        child: Text(
          "Overview",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class AboutMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "R, 09/24/2023 (US) 1h49m",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Action, Scary",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ScoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: SizedBox(
                    child: Text("72"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("User Score"),
              ],
            )),
        Container(
          width: 1,
          height: 15,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [Icon(Icons.play_arrow), Text("Play Trailer")],
          ),
          style: ButtonStyle(),
        )
      ],
    );
  }
}

class MovieNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "Заложники",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "(2023)",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          )
        ],
      ),
    );
  }
}

class MovieImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Image(
          image: AssetImage(Backdrops.retributionBackdrop),
        ),
        Positioned(
          top: 20,
          bottom: 20,
          left: 20,
          child: Image(
            image: AssetImage(Images.retribution),
          ),
        )
        // Image(image: AssetImage(Images.retribution)),
      ],
    );
  }
}
