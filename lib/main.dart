import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  MyMcbApp mcbApp = new MyMcbApp();
  debugPaintSizeEnabled = true;
  runApp(mcbApp);
}

class MyMcbApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xffd50133),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16.0),
            ),
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
            height: 55.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img_tab_accounts.png'),
                      new Text(
                        'Accounts',
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img_tab_accounts.png'),
                      new Text(
                        'My Cards',
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img_tab_paytransfer.png'),
                      new Text(
                        'Pay & Transfer',
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img_tab_refill.png'),
                      new Text(
                        'Refill',
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img_tab_more.png'),
                      new Text(
                        'More',
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Container(
          height: 185.0,
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
                  width: 65.0,
                  child: Image.asset('assets/img_guest_profile.png'),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              Row(),
              Text(
                'OLFA',
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              Text(
                'FDHILA',
                style: TextStyle(color: Colors.white, fontSize: 17.0),
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
                    Container(
                      height: 43.0,
                      child: Image.asset('assets/img_qrscan.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Scan to pay',
                        style: TextStyle(
                            color: Colors.white,
//                          fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 18.0),
                child: Text('At a glance'),
              ),
              Container(
                height: 88,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(24.0),
                      child: Image.asset('assets/img_savings_icon.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Saving Account - SG',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                          Text(
                            'MUR 1,000,000.04',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          Text(
                            '0004441234123',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child:
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 88,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(24.0),
                                child:
                                    Image.asset('assets/img_savings_icon.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Saving Account - SG',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.grey),
                                    ),
                                    Text(
                                      'MUR 1,000,000.04',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    ),
                                    Text(
                                      '0004441234123',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
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
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 15.0),
                child: Text('Recent Juice Activities'),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: Image.asset('assets/transfermenu_refill.png'),
                      ),
                      Expanded(
                        child: Text(
                          '22 March 2019',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ref: J00010400000',
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'MUR 350.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.0),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Ref: J00010400000',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  Text(
                                    '59049149',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'MUR 350.0',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
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
