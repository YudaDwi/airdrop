part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'))),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextSyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
              //letter spacing figma X fontsize / 100
            )
          ],
        ),
      ),
    );
  }
}
