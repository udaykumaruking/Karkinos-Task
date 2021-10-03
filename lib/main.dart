import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: kBackground,
        appBar: AppBar(
          title: const Text("Expandable Demo"),
        ),
        body: DefaultTabController(
          length: 5,
          child: SingleChildScrollView(
            child: ExpandableTheme(
              data: const ExpandableThemeData(
                iconColor: Colors.blue,
                useInkWell: true,
              ),
              child: const Card1(),
            ),
          ),
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  hasIcon: false,
                  iconColor: Color.fromRGBO(1, 1, 1, 0),
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  // tapBodyToCollapse: false,
                ),
                header: Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    top: 10,
                    right: 30,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "Jane Doe 49/F",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "PID ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "123456789",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                collapsed: const SizedBox(
                  height: 0,
                ),

                expanded: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 60,
                        right: 30,
                      ),
                      child: Column(
                        children: const [
                          BuildRow(
                              a: '',
                              b: '01 January,1976 (45/F)| A+ |9465132563',
                              c: 'CID',
                              d: '123456789'),
                          BuildRow(
                              a: '',
                              b: 'No Known Allergies',
                              c: 'Location',
                              d: 'Karkinos'),
                          BuildRow(
                              a: 'Tx Stage',
                              b: 'Post Surgery',
                              c: 'DMG',
                              d: 'Cardiology'),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    ExpandableTheme(
                      data: const ExpandableThemeData(
                        iconColor: Colors.blue,
                        animationDuration: Duration(milliseconds: 500),
                      ),
                      child: ExpandableNotifier(
                        child: ScrollOnExpand(
                          scrollOnExpand: true,
                          scrollOnCollapse: false,
                          child: ExpandablePanel(
                            theme: const ExpandableThemeData(
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                            header: Container(
                              color: kBlueLight,
                              alignment: Alignment.centerRight,
                              child: const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 30,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            collapsed: const SizedBox(
                              width: 0,
                            ),
                            expanded: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Column(
                                children: [
                                  const TabViewWidget(),
                                  SizedBox(
                                    height: 250,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 30.0,
                                        top: 15,
                                      ),
                                      child: TabBarView(
                                        children: [
                                          Column(
                                            children: const [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              BuildRow2(
                                                  a: 'Condition:',
                                                  b: 'Labular in Situ',
                                                  c: '',
                                                  d: ''),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              BuildRow2(
                                                  a: 'ECOG Performance Status:',
                                                  b: '3',
                                                  c: '',
                                                  d: ''),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              BuildRow2(
                                                  a: 'Condition:',
                                                  b: 'Cardiology',
                                                  c: '',
                                                  d: ''),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              BuildRow2(
                                                  a: 'Stage',
                                                  b: 'T1c N2 M0',
                                                  c: '',
                                                  d: ''),
                                            ],
                                          ),
                                          const Text('data2'),
                                          const Text('data3'),
                                          const Text('data4'),
                                          const Text('data5'),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            builder: (_, collapsed1, expanded1) {
                              return Expandable(
                                collapsed: collapsed1,
                                expanded: expanded1,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // controller: ,
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class TabViewWidget extends StatelessWidget {
  const TabViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(252, 252, 255, 1),
      ),
      // clipBehavior: ClipOval(clipper: ,),
      child: const TabBar(
          indicatorColor: kVoilet,
          labelColor: kVoilet,
          unselectedLabelColor: kBlack,
          automaticIndicatorColorAdjustment: true,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(
              text: 'Condition',
            ),
            Tab(
              text: 'DMG Details',
            ),
            Tab(
              text: 'BioMarkers',
            ),
            Tab(
              text: 'Stage',
            ),
            Tab(
              text: 'Treatments',
            ),
          ]),
    );
  }
}

class BuildRow extends StatelessWidget {
  final String a;
  final String b;
  final String c;
  final String d;
  const BuildRow({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const ClipOval(
              child: SizedBox(
                width: 60,
                height: 40,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              '$a ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              b,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '$c ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              d,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildRow2 extends StatelessWidget {
  final String a;
  final String b;
  final String c;
  final String d;
  const BuildRow2({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '$a ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              b,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '$c ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              d,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
