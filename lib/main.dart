import 'package:flutter/material.dart';

void main() {
  MyMcbApp mcbApp = new MyMcbApp();
  runApp(mcbApp);
}

class MyMcbApp extends StatefulWidget {
  @override
  _MyMcbAppState createState() => _MyMcbAppState();
}

class _MyMcbAppState extends State<MyMcbApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xffd50133),
            title: Text('Home'),
            centerTitle: true,
            leading: Icon(
              Icons.mail_outline,
              size: 33.0,
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.power_settings_new,
                  size: 33.0,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(child: _buildBody()),
          bottomNavigationBar: Container(
            height: 60.0,
            child: Row(
              children: <Widget>[
                BottomNavigationBarItemImg(
                    icon: Image.asset('assets/img_tab_accounts.png'),
                    title: new Text(
                      'Accounts',
                      style: TextStyle(color: Colors.grey, fontSize: 11.0),
                    )),
                BottomNavigationBarItemImg(
                    icon: Image.asset('assets/img_tab_cards.png'),
                    title: new Text(
                      'My Cards',
                      style: TextStyle(color: Colors.grey, fontSize: 11.0),
                    )),
                BottomNavigationBarItemImg(
                    icon: Image.asset('assets/img_tab_paytransfer.png'),
                    title: new Text(
                      'Pay & Transfer',
                      style: TextStyle(color: Colors.grey, fontSize: 11.0),
                    )),
                BottomNavigationBarItemImg(
                    icon: Image.asset('assets/img_tab_refill.png'),
                    title: new Text(
                      'Refill',
                      style: TextStyle(color: Colors.grey, fontSize: 11.0),
                    )),
                BottomNavigationBarItemImg(
                    icon: Image.asset('assets/img_tab_more.png'),
                    title: new Text(
                      'More',
                      style: TextStyle(color: Colors.grey, fontSize: 11.0),
                    ))
              ],
            ),
          )),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                child: Container(
                  width: 75.0,
                  child: Image.asset('assets/img_guest_profile.png'),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              Row(),
              Text(
                'OLFA',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Text(
                'FDHILA',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ) /* add child content here */,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.white12,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/img_qrscan.png'),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Scan to pay',
                        style: TextStyle(
                            color: Colors.white,
//                          fontWeight: FontWeight.bold,
                            fontSize: 21.0),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 15.0),
                child: Text('At a glance'),
              ),
              Container(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            height: 85,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(22.0),
                                  child: Image.asset(
                                      'assets/img_savings_icon.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'Saving Account - SG',
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.grey),
                                      ),
                                      Text(
                                        'MUR 114.04',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      Text(
                                        '000444123132',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 15.0),
                child: Text('Recent Juice Activities'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView.builder(
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55.0,
                              width: 55.0,
                              child:
                                  Image.asset('assets/transfermenu_refill.png'),
                            ),
                            Expanded(
                              child: Text(
                                '22 March 2019',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 14),
                                child: Text(
                                  'Repeat',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55.0,
                              width: 55.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Ref: J00010497345',
                                    style:
                                        TextStyle(color: Colors.grey, fontSize: 14),
                                  ),
                                  Text(
                                    '59049149',
                                    style:
                                        TextStyle(color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8.0),
                              child: Text(
                                'MUR 350.0',
                                style:
                                TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class BottomNavigationBarItemImg extends StatelessWidget {
  final Widget title;
  final Widget icon;

  const BottomNavigationBarItemImg({Key key, this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[icon, title],
      ),
    );
  }
}
