import 'package:esdm/src/CadetReadiness/index.dart';
import 'package:esdm/src/KalkulatorPangkat/index.dart';
import 'package:esdm/src/EMC/index.dart';
import 'package:esdm/src/Catpers/index.dart';
import 'package:esdm/src/TryoutPSI/index.dart';
import 'package:esdm/src/Disposisi/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),

  //GRID MENU

  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(4, 1),
];

List<Widget> _tiles = const <Widget>[
  const _PMJImage(Colors.white),
  const _SDMImage(Colors.black),

  //GRID MENU

  const _Catpers(Colors.green, Icons.widgets, Text('Catpers', style: TextStyle(color: Colors.white),)),
  const _CadetReadiness(Colors.amber, Icons.directions_run, Text('Cadet Readiness', style: TextStyle(color: Colors.white),)),
  const _EMC(Colors.black, Icons.chat, Text('EMC2', style: TextStyle(color: Colors.white),)),
  const _Disposisi(Colors.deepOrange, Icons.markunread, Text('Disposisi', style: TextStyle(color: Colors.white),)),
  const _KalkulatorPangkat(Colors.brown, Icons.keyboard_arrow_up, Text('Kalkulator Pangkat', style: TextStyle(color: Colors.white),)),
  const _TryoutPSI(Colors.red, Icons.note, Text('Tryout Psi', style: TextStyle(color: Colors.white),)),


];

class Home extends StatefulWidget {
  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Dashboard E-SDM'),
          backgroundColor: Colors.black,
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _PMJImage extends StatelessWidget{
  const _PMJImage(this.backgroundColor);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new SizedBox(
          child: Image.asset("lib/assets/img/pmj.png", fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class _SDMImage extends StatelessWidget{
  const _SDMImage(this.backgroundColor);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new SizedBox(
          child: Image.asset("lib/assets/img/sdmpolri.jpeg", fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class _GridMenu extends StatelessWidget {
  const _GridMenu(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CadetReadiness extends StatelessWidget {
  const _CadetReadiness(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadetReadiness()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _KalkulatorPangkat extends StatelessWidget {
  const _KalkulatorPangkat(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KalkulatorPangkat()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EMC extends StatelessWidget {
  const _EMC(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EMC()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Catpers extends StatelessWidget {
  const _Catpers(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Catpers()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TryoutPSI extends StatelessWidget {
  const _TryoutPSI(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TryoutPSI()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}

class _Disposisi extends StatelessWidget {
  const _Disposisi(this.backgroundColor, this.iconData, this.textGrid);

  final Color backgroundColor;
  final IconData iconData;
  final Text textGrid;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Disposisi()),
              );
            },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //text
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(iconData, color: Colors.white, size: 40.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: textGrid
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}