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
                      'https://2v9xey2o80cl1dh164410pjg-wpengine.netdna-ssl.com/wp-content/uploads/2019/01/trivia-background.jpg'),
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
