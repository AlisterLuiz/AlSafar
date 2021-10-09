import 'package:alsafar/utilities/index.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarWithPopAndNotif(context),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            height: screenHeight(context) * 0.17,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '1234',
                      style: TextStyle(
                        fontSize: 32,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    sizedBox(0, 10),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Points',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Track your points and redeem exciting rewards!',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ),
          sizedBox(10, 0),
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight(context) * 0.28,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleReward()));
                    },
                    child: Container(
                      width: screenWidth(context),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://image.freepik.com/free-vector/gradient-colorful-sale-wallpaper_52683-55788.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          sizedBox(10, 0),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Our Offers',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemExtent: screenHeight(context) * 0.14,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleReward()));
                  },
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Theme.of(context).primaryColor,
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).backgroundColor,
                      image: DecorationImage(
                        image: NetworkImage('https://image.freepik.com/free-vector/gradient-colorful-sale-wallpaper_52683-55788.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    'Offer Title',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Do laboris incididunt ad adipisicing labore ipsum aliqua esse mollit nisi adipisicing est.',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Points',
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
