import 'package:alsafar/utilities/index.dart';

class GroupChat extends StatefulWidget {
  const GroupChat({Key? key}) : super(key: key);

  @override
  _GroupChatState createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  String newMessage = '';
  TextEditingController _messageController = TextEditingController();
  List messages = [
    {
      'contentType': 'sendMessage',
      'message': 'Hello',
      'time': '11:34 AM',
      'status': 'read'
    },
    {
      'contentType': 'sendMessage',
      'message': 'Hi again',
      'time': '11:34 AM',
      'status': 'read'
    },
    {
      'contentType': 'receiveMessage',
      'message': 'Hello!',
      'time': '11:34 AM',
      'status': 'read'
    },
    {
      'contentType': 'receiveMessage',
      'message':
          'Velit elit eiusmod eu labore ad ut sint eiusmod voluptate velit occaecat eiusmod. Ipsum duis amet ut dolore tempor velit deserunt. Magna officia pariatur deserunt commodo aliqua magna culpa duis officia velit officia.',
      'time': '11:34 AM',
      'status': 'read'
    },
    {
      'contentType': 'sendMessage',
      'message':
          'Velit elit eiusmod eu labore ad ut sint eiusmod voluptate velit occaecat eiusmod. Ipsum duis amet ut dolore tempor velit deserunt. Magna officia pariatur deserunt commodo aliqua magna culpa duis officia velit officia.',
      'time': '11:34 AM',
      'status': 'read'
    },
    {'contentType': 'date', 'message': 'TODAY'},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          screenHeight(context) * 0.17,
        ),
        child: SafeArea(
          child: AppBar(
            // Don't show the leading button
            leadingWidth: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).backgroundColor,
            actions: [],
            centerTitle: false,
            titleSpacing: 0.0,
            title: IconButton(
              icon: Icon(Icons.chevron_left,
                  color: Theme.of(context).primaryColor, size: 28),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 10,
              ),
              title: Container(
                height: screenHeight(context) * 0.08,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 25.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 23.0,
                        ),
                      ),
                    ),

                    sizedBox(0, 15),
                    Text(
                      'Bus No. C18',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    //           // Row(
                    //           //   children: [
                    //           //     SvgPicture.asset(
                    //           //       'assets/images/Innit Icons/LIGHT/Chat/Group-8.svg',
                    //           //     ),
                    //           //     sizedBox(0, 20),
                    //           //     SvgPicture.asset(
                    //           //       'assets/images/Innit Icons/LIGHT/Chat/Group-9.svg',
                    //           //     ),
                    //           //   ],
                    //           // )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 10,
          bottom: 110,
          right: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ListView.builder(
          reverse: true,
          itemCount: messages.length,
          itemBuilder: (context, i) {
            if (messages[i]['contentType'] == 'date')
              return Align(
                alignment: Alignment.center,
                child: Container(
                  height: 30,
                  width: 60,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).primaryColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Theme.of(context).accentColor.withOpacity(0.25),
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      messages[i]['message'],
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                  ),
                ),
              );
            else if (messages[i]['contentType'] == 'sendMessage')
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    constraints:
                        BoxConstraints(maxWidth: screenWidth(context) * 0.6),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      messages[i]['message'],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        messages[i]['time'],
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 10,
                        ),
                      ),
                      sizedBox(0, 5),
                      if (messages[i]['status'] == 'read')
                        Icon(
                          Icons.done_all,
                          size: 15,
                        )
                      else if (messages[i]['status'] == 'delivered')
                        Icon(
                          Icons.check,
                          size: 15,
                        )
                      else
                        Icon(
                          Icons.error_outline,
                          size: 15,
                        )
                    ],
                  )
                ],
              );
            else if (messages[i]['contentType'] == 'receiveMessage')
              return Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: 18,
                    ),
                    sizedBox(0, 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxWidth: screenWidth(context) * 0.6),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xfff8f8ff),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            messages[i]['message'],
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Text(
                          messages[i]['time'],
                          style: TextStyle(
                            color: Color(0xffBBB0D9),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            else
              return Container();
          },
        ),
      ),
      bottomSheet: Container(
        height: 85,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.25),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0.0, 0.0),
            )
          ],
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: screenWidth(context) * 0.75,
                padding: EdgeInsets.only(left: 12.0),
                child: TextField(
                  controller: _messageController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffE9E1FF), width: 1.0)),
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: 'Type here...',
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  onChanged: (text) {
                    setState(() {
                      newMessage = text;
                    });
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    messages.insert(0, {
                      'contentType': 'sendMessage',
                      'message': newMessage,
                      'time': '11:34 AM',
                      'status': 'delivered'
                    });
                  });
                  _messageController.clear();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
