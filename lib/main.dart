import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            top: 590,
            right: 160,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: FloatingActionButton(
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff11998E), Color(0xff38EF7D)])),
                    ),
                  ),
                  elevation: 20,
                  onPressed: null),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff11998E), Color(0xff38EF7D)]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          height: 50,
          width: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => shopping()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.short_text),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => news()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
          elevation: 0, backgroundColor: Colors.white, title: Text("hey")),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 168.00,
            width: 336.00,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 70,
                  left: 70,
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'search',
                      ),
                      cursorRadius: Radius.circular(40),
                    ),
                    height: 62.00,
                    width: 263.00,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        width: 1.00,
                        color: Color(0xffffffff),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00, 3.00),
                          color: Color(0xff000000).withOpacity(0.36),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(35.00),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 80,
                  child: Text("search!",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: 20,
                        color: Colors.amber,
                        fontStyle: FontStyle.italic,
                      )),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 40),
              child: Text(
                "trending videos",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: 500,
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 5, right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          height: 10,
                          width: 10,
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class news extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff11998E), Color(0xff38EF7D)]),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        height: 50,
        width: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => shopping()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  }),
            ),
            Icon(Icons.short_text),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: new GridView.builder(
                      itemCount: 10,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                            height: 150,
                            width: 10,
                          ),
                        );
                      }),
                ),
              ),
            ),
            Positioned(
                top: 70,
                left: 150,
                child: Container(
                  child: Text(
                    "news for you!",
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff11998E), Color(0xff38EF7D)]),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            height: 50,
            width: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_basket),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => shopping()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.short_text),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => news()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container());
  }
}
