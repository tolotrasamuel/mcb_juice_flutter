import 'package:flutter/material.dart';

void main() {
  MyMcbApp mcbApp = new MyMcbApp();
  runApp(mcbApp);
}

class MyMcbApp extends StatelessWidget {
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
      body: _buildBody(),
    ));
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
          color: Colors.black12,
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
                padding: const EdgeInsets.all(8.0),
                child: Text('At a glance'),
              ),
              Container(
                height: 100.0,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Image.asset('assets/img_savings_icon.png'),
                      Column(
                        children: <Widget>[
                          Text('Saving Account - SG'),
                          Text('MUR 114.04'),
                          Text('000444123132'),
                        ],
                      )
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
