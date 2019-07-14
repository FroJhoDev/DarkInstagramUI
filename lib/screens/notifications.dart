import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(color: Colors.grey[800]))),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  TabBar(
                    indicatorColor: Colors.grey,
                    tabs: <Widget>[
                      Container(
                        height: 53.0,
                        child: Center(
                          child: Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 53.0,
                        child: Center(
                          child: Text(
                            'You',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // tab following
            Icon(Icons.notifications_off, size: 40.0),
            // tab you
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_04.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'cercei69 ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'started',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'following you. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '3h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Material(
                            elevation: 1,
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('Follow'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_07.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'bran88 ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'started',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'following you. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '3h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Material(
                            elevation: 1,
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('Follow'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_02.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'snow_jon ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'like',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'your post. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '6h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image(
                              width: 90.0,
                              height: 90.0,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/instagrampost2.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey[800]),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Text(
                        'Yesterday',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_05.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'cercei69 ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'started',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'following you. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '3h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Material(
                            elevation: 1,
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('Follow'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_09.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'snow_jon ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'like',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'your post. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '6h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image(
                              width: 90.0,
                              height: 90.0,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/instagrampost3.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_06.jpg'),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'snow_jon ',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'like',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'your post. ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '6h',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image(
                              width: 90.0,
                              height: 90.0,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/instagrampost4.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
