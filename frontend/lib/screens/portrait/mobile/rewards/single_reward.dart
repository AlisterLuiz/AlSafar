import 'package:alsafar/utilities/index.dart';

class SingleReward extends StatefulWidget {
  const SingleReward({Key? key}) : super(key: key);

  @override
  _SingleRewardState createState() => _SingleRewardState();
}

class _SingleRewardState extends State<SingleReward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: screenHeight(context) * 0.3,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(20),
                  //   bottomRight: Radius.circular(20),
                  // ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(20),
                          height: screenHeight(context) * 0.2,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Irure consequat cupidatat aliqua proident nostrud ea ullamco fugiat aute.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).backgroundColor,
                                ),
                              ),
                              // sizedBox(20, 0),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Text(
                                  'Company Name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                              ),
                              // sizedBox(20, 0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w800,
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                  ),
                                  sizedBox(0, 10),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Text(
                                      'Points',
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        sizedBox(20, 0),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'About The Offer',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        sizedBox(20, 0),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Pariatur occaecat aute consequat pariatur dolor. Mollit qui tempor magna ad cillum irure adipisicing do eiusmod excepteur. Et ut anim nulla adipisicing tempor elit eiusmod minim nulla consequat. Culpa ea aliquip non ut non. In in cillum officia minim commodo officia non anim velit laboris amet.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        sizedBox(20, 0),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chevron_left,
                          color: Theme.of(context).backgroundColor),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()),
                          );
                        },
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
    // body: NestedScrollView(
    //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    //     return <Widget>[
    //       SliverAppBar(
    //         expandedHeight: screenHeight(context) * 0.3,
    //         floating: false,
    //         pinned: true,
    //         leading: IconButton(
    //           icon: Icon(Icons.chevron_left,
    //               color: Theme.of(context).backgroundColor),
    //           onPressed: () => Navigator.pop(context),
    //         ),
    //         actions: [
    //           Padding(
    //             padding: EdgeInsets.only(right: 10),
    //             child: IconButton(
    //               onPressed: () {
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => Notifications()),
    //                 );
    //               },
    //               icon: Icon(
    //                 Icons.notifications_outlined,
    //                 color: Theme.of(context).backgroundColor,
    //               ),
    //             ),
    //           )
    //         ],
    //         flexibleSpace: FlexibleSpaceBar(
    //             // centerTitle: true,
    //             // title: Text(
    //             //   "Collapsing Toolbar",
    //             //   style: TextStyle(
    //             //     color: Colors.white,
    //             //     fontSize: 16.0,
    //             //   ),
    //             // ),
    // background: Image.network(
    //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
    //   fit: BoxFit.cover,
    // )),
    //       ),
    //     ];
    //   },
    //   body: ListView(
    //     children: [
    //       Container(
    //         margin: EdgeInsets.all(20),
    //         padding: EdgeInsets.all(20),
    //         height: screenHeight(context) * 0.2,
    //         decoration: BoxDecoration(
    //           color: Theme.of(context).primaryColor,
    //           borderRadius: BorderRadius.circular(25),
    //         ),
    //         child: Column(
    //           // crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Text(
    //               'Irure consequat cupidatat aliqua proident nostrud ea ullamco fugiat aute.',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 fontSize: 14,
    //                 color: Theme.of(context).backgroundColor,
    //               ),
    //             ),
    //             // sizedBox(20, 0),
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 15.0),
    //               child: Text(
    //                 'Company Name',
    //                 textAlign: TextAlign.center,
    //                 style: TextStyle(
    //                   fontSize: 18,
    //                   fontWeight: FontWeight.bold,
    //                   color: Theme.of(context).backgroundColor,
    //                 ),
    //               ),
    //             ),
    //             // sizedBox(20, 0),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   '30',
    //                   style: TextStyle(
    //                     fontSize: 32,
    //                     fontWeight: FontWeight.w800,
    //                     color: Theme.of(context).backgroundColor,
    //                   ),
    //                 ),
    //                 sizedBox(0, 10),
    //                 Padding(
    //                   padding: EdgeInsets.only(top: 4.0),
    //                   child: Text(
    //                     'Points',
    //                     style: TextStyle(
    //                       fontSize: 26,
    //                       fontWeight: FontWeight.w600,
    //                       color: Theme.of(context).backgroundColor,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       sizedBox(20, 0),
    //       const Padding(
    //         padding: EdgeInsets.only(left: 20.0),
    //         child: Text(
    //           'About The Offer',
    //           style: TextStyle(
    //             fontSize: 22,
    //             fontWeight: FontWeight.w800,
    //           ),
    //         ),
    //       ),
    //       sizedBox(20, 0),
    //       const Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 20.0),
    //         child: Text(
    //           'Lorem consequat dolor pariatur aute nulla dolor velit Lorem minim in. Irure aliqua pariatur culpa ipsum consequat ea irure et duis. Fugiat laborum non consequat Lorem esse magna aliquip. Fugiat aute voluptate veniam ut sint. Tempor et eu nostrud commodo duis laboris velit reprehenderit enim. Dolor laborum et voluptate non id elit nisi anim. Irure tempor laboris sit laborum magna ut pariatur minim incididunt aute quis id.',
    //           textAlign: TextAlign.justify,
    //           style: TextStyle(
    //             fontSize: 12,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),

    // );
  }
}
