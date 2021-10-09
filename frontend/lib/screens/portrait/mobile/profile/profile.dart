import 'package:alsafar/utilities/index.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Stack(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight(context) * 0.33,
                  ),
                  child: Text(
                    'Your Name',
                    style: TextStyle(
                      fontSize: 30,
                      // color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight(context) * 0.4,
                  ),
                  child: Text(
                    'Dubai, UAE',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight(context) * 0.5,
                  ),
                  child: Container(
                    width: screenWidth(context) * 0.8,
                    child: FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          getUserCounts(context, '1234', 'Points'),
                          SizedBox(
                            width: 1,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          getUserCounts(context, '12', 'Trips Completed'),
                          SizedBox(
                            width: 1,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          getUserCounts(context, '6', 'Buddies'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Padding(
              //     padding: EdgeInsets.only(
              //       top: screenHeight(context) * 0.48,
              //     ),
              //     child: InkWell(
              //       onTap: () {
              //         Navigator.pushNamed(context, '/editProfile');
              //       },
              //       child: Container(
              //         height: 40,
              //         width: screenWidth(context) * 0.7,
              //         decoration: BoxDecoration(
              //           color: Theme.of(context).primaryColor,
              //           borderRadius: BorderRadius.circular(5),
              //           border: Border.all(
              //             color: Theme.of(context).accentColor,
              //           ),
              //         ),
              //         child: Center(
              //           child: Text(
              //             'EDIT PROFILE',
              //             style: TextStyle(
              //               fontSize: 14,
              //               fontWeight: FontWeight.w700,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: screenHeight(context) * 0.09,
                  ),
                  child: Text(
                    'Share Al Safar with Everyone!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: screenHeight(context) * 0.01,
                  ),
                  child: Container(
                    width: screenWidth(context) * 0.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenHeight(context) * 0.03),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: screenWidth(context) * 0.26,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        radius: screenWidth(context) * 0.22,
                        backgroundColor: Theme.of(context).accentColor,
                        backgroundImage: NetworkImage(
                            'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png'),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: screenHeight(context) * 0.375,
                //     left: screenWidth(context) * 0.38,
                //   ),
                //   child: Align(
                //     alignment: Alignment.topCenter,
                //     child: CircleAvatar(
                //       radius: 17,
                //       backgroundColor: Colors.green,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white, size: 28),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                icon: Icon(Icons.settings_outlined,
                    color: Colors.white, size: 28),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getUserCounts(BuildContext context, String count, String name) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        sizedBox(5, 0),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
