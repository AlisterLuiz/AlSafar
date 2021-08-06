import 'package:alsafar/utilities/index.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).backgroundColor,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.notifications_outlined,
          color: Theme.of(context).primaryColor,
        ),
      )
    ],
  );
}
