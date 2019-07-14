import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.0),
        elevation: 0,
        title: Text(
          'danys_fire',
          style: TextStyle(fontSize: 20.0),
        ),
        bottom: PreferredSize(
          child: Container(
            height: 1.0,
            color: Colors.grey[800],
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.menu),
            iconSize: 32.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.send),
            iconSize: 32.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 32.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 110.0,
                        height: 110.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_01.jpg'),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        width: 30.0,
                        height: 30.0,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.blueAccent,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              MdiIcons.plus,
                              color: Colors.white,
                              size: 13.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  '86',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'posts',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '3,4 k',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'followers',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '95',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'following',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Material(
                                elevation: 1,
                                color: Colors.grey[700],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text('Promote'),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Expanded(
                              child: Material(
                                elevation: 1,
                                color: Colors.grey[700],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text('Edit Profile'),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Daenerys Targaryen',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Mother of Dragons',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.0, right: 25.0, left: 25.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Daughter of the Storm',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Not Burned',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Queen of the Andes and the First Men',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '#fire ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#blod ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#thequeen ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#dracarys ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                height: 110.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0, left: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: IconButton(
                              icon: Icon(MdiIcons.plus),
                              onPressed: () {},
                            ),
                            width: 75.0,
                            height: 75.0,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                shape: BoxShape.circle),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'New',
                            style: TextStyle(fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                    Highlight(image: 'assets/images/profile_post3.jpg', title: 'Pets'),
                    Highlight(image: 'assets/images/profile_post8.jpg', title: 'Love'),
                    Highlight(image: 'assets/images/profile_post1.jpg', title: 'Wins'),
                    Highlight(image: 'assets/images/profile_post5.jpg', title: 'Friends'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(color: Colors.grey[800])
                      )
                    ),
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            indicatorColor: Colors.grey,
                            tabs: <Widget>[
                              Tab(icon: Icon(MdiIcons.grid),),
                              Tab(icon: Icon(MdiIcons.clipboardAccountOutline),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: TabBarView(
                      children: <Widget>[
                        // Tab1
                        GridView.count(
                          crossAxisCount: 3,
                          children: <Widget>[
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post1.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post2.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post3.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post4.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post5.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post6.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post7.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post8.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post9.jpg'),
                            ),
                          ],
                        ),
                        // Tab2
                        GridView.count(
                          crossAxisCount: 3,
                          children: <Widget>[
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post9.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post8.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post7.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post5.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post2.jpg'),
                            ),
                            Image(
                              width: double.infinity,
                              fit:BoxFit.cover,
                              image: AssetImage('assets/images/profile_post6.jpg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Highlight extends StatelessWidget {
  final String image;
  final String title;

  Highlight({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.0),
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            width: 75.0,
            height: 75.0,
            padding: EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(color: Colors.grey[800], shape: BoxShape.circle),
          ),
          SizedBox(height: 5.0),
          Text(
            title,
            style: TextStyle(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}
