import 'package:alsafar/utilities/index.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenHeight(context) * 0.01,
        ),
        child: ListView(
          children: [
            // UserInfoWidget(),
            Text(
              'Travel Buddies',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatList(index: index);
                }),
          ],
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final int index;
  const ChatList({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.transparent,
                blurRadius: 0,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleChat()),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).primaryColor,
              backgroundImage: NetworkImage(
                  'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png'),
            ),
            title: Container(
              width: screenWidth(context) * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10 min',
                            style: TextStyle(
                              fontSize: 10,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  sizedBox(3, 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth(context) * 0.6,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip.',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      (index == 3)
                          ? CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.black,
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 0.5,
        )
      ],
    );
  }
}
