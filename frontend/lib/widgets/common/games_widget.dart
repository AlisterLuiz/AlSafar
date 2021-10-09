import 'package:alsafar/utilities/index.dart';
import 'package:snake/main.dart' as Snake;
// import 'package:flutter_hangman/main.dart' as ;

class GamesWidget extends StatelessWidget {
  const GamesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List games = [
      Snake.MyApp(),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Games',
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: screenWidth(context) * 0.04,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => games[0],
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Theme.of(context).primaryColor,
                        backgroundImage: NetworkImage(
                            'https://iconarchive.com/download/i103845/blackvariant/button-ui-requests-13/Snake.ico'),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: screenHeight(context) * 0.025,
                          width: screenWidth(context) * 0.1,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.green,
                              ),
                              Text(
                                '123',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).backgroundColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
