import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.0),
        elevation: 0,
        title: Text(
          'Fluttergram',
          style: TextStyle(fontSize: 30.0, fontFamily: 'Billabong'),
        ),
        bottom: PreferredSize(
          child: Container(
            height: 1.0,
            color: Colors.grey[800],
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(MdiIcons.cameraOutline),
          iconSize: 32.0,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.send),
            iconSize: 32.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text('Stories',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold)),
                  ),
                  Icon(
                    MdiIcons.menuRight,
                    size: 25.0,
                  ),
                  Text('Watch all',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 110.0,
              child: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: StoriesImages(
                        image: 'assets/images/profile_01.jpg',
                        userName: 'Your Story',
                      ),
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_02.jpg',
                      userName: 'snow_jon',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_03.jpg',
                      userName: 'arya_killer',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_04.jpg',
                      userName: 'cercei123',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_05.jpg',
                      userName: 'sansa2018',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_06.jpg',
                      userName: 'tiryon_hand',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_07.jpg',
                      userName: 'bran88',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_08.jpg',
                      userName: 'melisander69',
                    ),
                    StoriesImages(
                      image: 'assets/images/profile_09.jpg',
                      userName: 'tyrion_nodick',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(),
            ),
            ImagePost(
              userName: 'cercei69',
              profileImage: 'assets/images/profile_04.jpg',
              postImage: 'assets/images/instagrampost1.jpg',
              description: 'Nice moments with my brothers!',
              favorited: true,
            ),
            ImagePost(
              userName: 'cercei69',
              profileImage: 'assets/images/profile_06.jpg',
              postImage: 'assets/images/instagrampost2.jpg',
              description: 'Nice moments with my brothers!',
              favorited: false,
            ),
            ImagePost(
              userName: 'tiryon_hand',
              profileImage: 'assets/images/profile_07.jpg',
              postImage: 'assets/images/instagrampost3.jpg',
              description: 'Nice moments with my brothers!',
              favorited: true,
            ),
            ImagePost(
              userName: 'arya_killer',
              profileImage: 'assets/images/profile_03.jpg',
              postImage: 'assets/images/instagrampost4.jpg',
              description: 'Nice moments with my brothers!',
              favorited: false,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: CircularProgressIndicator(
                strokeWidth: 1,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StoriesImages extends StatelessWidget {
  final String image;
  final String userName;

  StoriesImages({this.image, this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              width: 75.0,
              height: 75.0,
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: ThemeData.dark().canvasColor, shape: BoxShape.circle),
            ),
            width: 75.0,
            height: 75.0,
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.1,
                      0.5,
                      0.8
                    ],
                    colors: [
                      Color.fromRGBO(79, 91, 213, 1),
                      Color.fromRGBO(150, 47, 191, 1),
                      Color.fromRGBO(214, 41, 118, 1),
                      Color.fromRGBO(250, 126, 30, 1),
                    ]),
                shape: BoxShape.circle),
          ),
          SizedBox(height: 5.0),
          Text(
            userName,
            style: TextStyle(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}

class ImagePost extends StatefulWidget {

  final String profileImage;
  final String userName;
  final String postImage;
  final String description;
  final bool favorited;

  ImagePost({
    this.profileImage,
    this.userName,
    this.postImage,
    this.description,
    this.favorited
  });

  @override
  _ImagePostState createState() => _ImagePostState();
}

class _ImagePostState extends State<ImagePost> {

  Icon favoritedIcon =Icon(MdiIcons.heartOutline);

  @override
  void initState() {    
    super.initState();
    if (widget.favorited) {
      favoritedIcon =Icon(MdiIcons.heart, color: Colors.redAccent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(widget.profileImage),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.userName,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text('Brazil',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey))
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                  )
                ],
              ),
            ),
            Image(
              width: double.infinity,
              image: AssetImage(widget.postImage),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: favoritedIcon,
                    iconSize: 28.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(MdiIcons.commentOutline),
                    iconSize: 28.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(MdiIcons.send),
                    iconSize: 28.0,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(MdiIcons.bookmarkOutline),
                    iconSize: 28.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'Liked by ',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'dany_fire, arya_killer ',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'and ',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '213 others ',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '#lanister ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#lion ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#besthouse ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#brothers ',
                    style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    ' 3 hours ago',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    textAlign: TextAlign.left,
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
