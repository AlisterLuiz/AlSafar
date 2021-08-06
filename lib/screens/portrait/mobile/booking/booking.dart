import 'package:alsafar/utilities/index.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
            UserInfoWidget(),
            SizedBox(
              height: screenHeight(context) * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hire a Taxi',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.03,
                ),
                Container(
                  height: screenHeight(context) * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/rta.png',
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSadOXPj4bCDNUzDm_hAXeoB9tuIF2KRA8q1A&usqp=CAU'),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/careem.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            InfoList(
              title: 'Hotels Nearby',
              imgLink:
                  'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768',
              height: screenHeight(context) * 0.17,
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            InfoList(
              title: 'Popular Destinations',
              imgLink:
                  'https://cdn.jumeirah.com/-/mediadh/dh/hospitality/jumeirah/hotels/dubai/burj-al-arab-jumeirah/hero/burj-al-arab-profile-exterior_6-4_landscape/burj-al-arab-profile-exterior_6-4_landscape__portrait.jpg?w=600',
              height: screenHeight(context) * 0.17,
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
