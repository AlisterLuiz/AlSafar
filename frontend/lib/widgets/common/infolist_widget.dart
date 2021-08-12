import 'package:alsafar/utilities/index.dart';

class InfoList extends StatelessWidget {
  final String title;
  final String imgLink;
  final double height;
  const InfoList({
    Key? key,
    required this.title,
    required this.imgLink,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: screenHeight(context) * 0.03,
        ),
        Container(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: screenWidth(context) * 0.05,
                ),
                child: Container(
                  width: screenWidth(context) * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: NetworkImage(imgLink),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
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
