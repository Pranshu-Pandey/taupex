import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text('Page 1'),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text('Page 2'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('Page 3'),
      ),
    ),
  ];

  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff465FD3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.1.sh,
              ),
              Text(
                "taupex",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                height: 0.5.sh,
                child: PageView.builder(
                  itemCount: pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                ),
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "This application allows you to pay bills in one place.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.003.sh,
                    width: 0.03.sh,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(113, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(
                    width: 0.02.sw,
                  ),
                  Container(
                    height: 0.003.sh,
                    width: 0.03.sh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              InkWell(
                onTap: () {
                  // Handle button tap
                },
                child: Container(
                  height: 0.06.sh,
                  decoration: BoxDecoration(
                    color: Color(0xff3A4FBC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 0.3.sw,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              InkWell(
                onTap: () {
                  // Handle button tap
                },
                child: Container(
                  height: 0.06.sh,
                  decoration: BoxDecoration(
                    color: Color(0xffDC4A33),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 0.3.sw,
                      ),
                      Text(
                        'Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              InkWell(
                onTap: () {
                  // Handle button tap
                },
                child: Container(
                  height: 0.06.sh,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 0.3.sw,
                      ),
                      Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.04.sh,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "By logging into account you are agreeing with our Terms and Condition and Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
