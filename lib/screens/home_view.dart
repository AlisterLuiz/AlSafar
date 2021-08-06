import 'package:alsafar/utilities/index.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => NavigationBarMobilePortrait(),
          landscape: (context) => NavigationBarMobilePortrait(),
        ),
        tablet: OrientationLayout(
          portrait: (context) => NavigationBarMobilePortrait(),
          landscape: (context) => NavigationBarMobilePortrait(),
        ),
        desktop: OrientationLayout(
          portrait: (context) => NavigationBarMobilePortrait(),
          landscape: (context) => NavigationBarMobilePortrait(),
        ),
      ),
    );
  }
}
