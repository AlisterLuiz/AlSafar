import 'package:alsafar/utilities/index.dart';

class NavigationBarMobilePortrait extends StatefulWidget {
  @override
  _NavigationBarMobilePortraitState createState() =>
      _NavigationBarMobilePortraitState();
}

class _NavigationBarMobilePortraitState
    extends State<NavigationBarMobilePortrait> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = Provider.of<CurrentIndexProvider>(context);

    final List<Widget> _children = [
      HomePage(),
      HomePage(),
      GamesPage(),
      BookingPage(),
      HomePage(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: _children[currentIndex.getIndex()],
        bottomNavigationBar: Container(
          height: 85,
          width: double.infinity,
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
            child: BottomNavigationBar(
              currentIndex: currentIndex.getIndex(),
              onTap: (index) {
                setState(() {
                  currentIndex.setIndex(index);
                });
              },
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedItemColor: Color(0xff150443),
              unselectedItemColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).backgroundColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 0)
                        ? Icons.home
                        : Icons.home_outlined,
                    semanticLabel: 'Home Page',
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 1)
                        ? Icons.people
                        : Icons.people_outline,
                  ),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff000000).withOpacity(0.25),
                            // blurRadius: 5.0,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0.0, 4.0))
                      ],
                      color: (currentIndex.getIndex() == 2)
                          ? Theme.of(context).backgroundColor
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.sports_esports,
                      color: (currentIndex.getIndex() == 2)
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).backgroundColor,
                      size: 30,
                    ),
                  ),
                  label: 'Rewards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 3)
                        ? Icons.local_taxi
                        : Icons.local_taxi_outlined,
                    semanticLabel: 'Booking Page',
                  ),
                  label: 'Booking',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 4)
                        ? Icons.person
                        : Icons.person_outline,
                    semanticLabel: 'Profile',
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
