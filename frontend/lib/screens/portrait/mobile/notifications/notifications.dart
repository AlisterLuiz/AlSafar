import 'package:alsafar/utilities/index.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notifications = [
    {'type': 'date', 'content': 'Today'},
    {
      'type': 'newBuddy',
      'content': 'Monica',
      'isBuddy': false,
      'time': '10 mins ago'
    },
    {
      'type': 'newBuddy',
      'content': 'Adam',
      'isBuddy': true,
      'time': '10 mins ago'
    },
    {
      'type': 'newBuddy',
      'content': 'Kim',
      'isBuddy': false,
      'time': '10 mins ago'
    },
    {'type': 'reward', 'content': '10', 'postID': 101, 'time': '10 mins ago'},
    {'type': 'date', 'content': 'This Week'},
    {
      'type': 'newBuddy',
      'content': 'John',
      'isBuddy': false,
      'time': '10 mins ago'
    },
    {'type': 'reward', 'content': '50', 'postID': 101, 'time': '10 mins ago'},
    {'type': 'reward', 'content': '30', 'postID': 101, 'time': '10 mins ago'},
    {'type': 'reward', 'content': '20', 'postID': 101, 'time': '10 mins ago'},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarWithPop(context),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenHeight(context) * 0.01,
        ),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            if (notifications[index]['type'] == 'newBuddy') {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            radius: 23,
                          ),
                        ),
                        sizedBox(0, 5),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: notifications[index]['content'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          ' has added you as their travel buddy!',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              sizedBox(5, 0),
                              Text(
                                notifications[index]['time'],
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        sizedBox(0, 5),
                        (notifications[index]['isBuddy'] == false)
                            ? Expanded(
                                flex: 1,
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context).primaryColor),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      notifications[index]['isBuddy'] =
                                          !notifications[index]['isBuddy'];
                                    });
                                  },
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: screenWidth(context) * 0.21,
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context).primaryColor),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      notifications[index]['isBuddy'] =
                                          !notifications[index]['isBuddy'];
                                    });
                                  },
                                  child: FittedBox(
                                    child: Text(
                                      'ADDED',
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                    sizedBox(5, 0),
                    Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 0.5,
                    )
                  ],
                ),
              );
            } else if (notifications[index]['type'] == 'reward') {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sizedBox(0, 10),
                      Expanded(
                        flex: 2,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      sizedBox(0, 10),
                      Expanded(
                        flex: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You have earned ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: notifications[index]['content'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' Nol Plus ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'points!',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            sizedBox(5, 0),
                            Text(
                              notifications[index]['time'],
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  sizedBox(5, 0),
                  Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 0.5,
                  )
                ],
              );
            } else if (notifications[index]['type'] == 'date') {
              return Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10, left: 10.0),
                child: Text(
                  notifications[index]['content'],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              );
            } else
              return Container();
          },
        ),
      ),
    );
  }
}
