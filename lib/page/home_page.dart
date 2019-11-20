import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/routes/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dealer"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/npa_logo.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            // width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(color: Colors.indigo),
            // padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildItem(
                          icon: Icons.dashboard,
                          text: "Dashboard",
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => HistoryPage()),
                            // );
                          }),
                      _buildItem(
                          icon: Icons.assessment,
                          text: "Products",
                          onTap: () {
                            Navigator.pushNamed(context, productRoute);
                          }),
                      _buildItem(
                          icon: Icons.assignment,
                          text: "Request Stock",
                          onTap: () {
                            Navigator.pushNamed(context, requestStockRoute);
                          }),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _buildItem(
                        icon: Icons.local_shipping,
                        text: "Dispatch",
                        onTap: () {
                          Navigator.pushNamed(context, dispatchRoute);
                        }),
                    _buildItem(
                        icon: Icons.description,
                        text: "Issues",
                        onTap: () {
                          Navigator.pushNamed(context, reportRoute);
                        }),
                    _buildItem(
                        icon: Icons.person,
                        text: "Consumers",
                        onTap: () {
                          Navigator.pushNamed(context, consumerRoute);
                        }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({IconData icon, String text, GestureTapCallback onTap}) {
    return Container(
      width: 120,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 15,
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          color: colorPrimaryYellow,
          child: InkWell(
            splashColor: Colors.indigo,
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 50,
                ),
                Padding(
                  // decoration: BoxDecoration(color: Colors.black38),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    text != null ? text : "",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.body2.copyWith(
                          color: Colors.white,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
