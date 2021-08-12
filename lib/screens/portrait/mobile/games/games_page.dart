import 'package:alsafar/utilities/index.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
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
            // SizedBox(
            //   height: screenHeight(context) * 0.05,
            // ),
            GamesWidget(),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            Container(
              height: screenHeight(context) * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://scontent.ffjr1-6.fna.fbcdn.net/v/t1.6435-9/103577505_4097416406965639_7422271786415589459_n.png?_nc_cat=110&ccb=1-4&_nc_sid=e3f864&_nc_ohc=tgw4FsXG28cAX_Gz_0G&_nc_ht=scontent.ffjr1-6.fna&oh=a906efaaf37e4223d487c5a8b8ad51de&oe=6134AFE1',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.50), BlendMode.dstATop),
                ),
              ),
              child: Center(
                child: Text(
                  'Trivia',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            InfoList(
              title: 'Browse Audio Books',
              imgLink:
                  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1588152105',
              height: screenHeight(context) * 0.25,
            ),
            SizedBox(
              height: screenHeight(context) * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
