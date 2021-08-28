import 'package:alsafar/utilities/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            GamesWidget(),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            Container(
              height: screenHeight(context) * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/map.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.50), BlendMode.dstATop),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    'Scan Route',
                    style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GroupChat()));
                    },
                    child: Container(
                      height: screenHeight(context) * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/buddy.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.50),
                              BlendMode.dstATop),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Chat',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth(context) * 0.1),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Rewards()));
                    },
                    child: Container(
                      height: screenHeight(context) * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/rewards.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.50),
                              BlendMode.dstATop),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Rewards',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
