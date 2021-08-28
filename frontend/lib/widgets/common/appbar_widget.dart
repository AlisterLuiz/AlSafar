import 'package:alsafar/utilities/index.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).backgroundColor,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            );
          },
          icon: Icon(
            Icons.notifications_outlined,
            color: Theme.of(context).primaryColor,
          ),
        ),
      )
    ],
  );
}

AppBar getAppBarWithPop(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.chevron_left, color: Theme.of(context).primaryColor),
      onPressed: () => Navigator.pop(context),
    ),
    backgroundColor: Theme.of(context).backgroundColor,
  );
}
