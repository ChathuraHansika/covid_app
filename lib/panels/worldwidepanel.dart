import 'package:flutter/material.dart';

class WorldwidePanel extends StatelessWidget {
  final Map worldData;

  const WorldwidePanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.purple
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CONFIRMED',
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      worldData['cases'].toString(),
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ACTIVE',
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      worldData['active'].toString(),
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.green
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'RECOVERD',
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      worldData['recovered'].toString(),
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'DEATH',
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      worldData['deaths'].toString(),
                      style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),
                    ),
                  ],
                )
              ],
            ),
          ),
//          StatusPanel(
//            title: 'CONFIRMED',
//            panelColor: Colors.red[100],
//            textColor: Colors.red,
//            count: worldData['cases'].toString(),
//          ),
//          StatusPanel(
//            title: 'ACTIVE',
//            panelColor: Colors.blue[100],
//            textColor: Colors.blue[900],
//            count: worldData['active'].toString(),
//          ),
//          StatusPanel(
//            title: 'RECOVERED',
//            panelColor: Colors.green[100],
//            textColor: Colors.green,
//            count: worldData['recovered'].toString(),
//          ),
//          StatusPanel(
//            title: 'DEATHS',
//            panelColor: Colors.grey[400],
//            textColor: Colors.grey[900],
//            count: worldData['deaths'].toString(),
//          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key key, this.panelColor, this.textColor, this.title, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
          )
        ],
      ),
    );
  }
}
