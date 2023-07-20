import 'package:flutter/material.dart';
import 'package:organizer/GoalsPage.dart';

class RolesPage extends StatefulWidget {
  const RolesPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  int _counter = 0;
  List<Widget> inputBoxes = [];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;

      const newTextField = TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter Role name',
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
        ),
      );

      inputBoxes.add(
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: newTextField,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the RolesPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "The first task is to write down your key roles. If you haven't really given serious thought to the roles in your life, you can write down what immediately comes to mind. You have a role as an individual. You may want to list one or more roles as a family member a husband or wife, mother or father, son or daughter, a member of the extended family of grandparents, aunts, uncles, and cousins. You may want to list a few roles in your work, indicating different areas in which you wish to invest time and energy on a regular basis. You may have roles in church or community affairs.\n\nYou don't need to worry about defining the roles in a way that you will live with for the rest of your life just consider the week and write down the areas you see yourself spending time in during the next seven days.\n",
              ),
              ...inputBoxes,
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 56.0,
          child: TextButton(
            child: Text('Next: Goals for the upcoming week'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoalsPage()),
              );
            },
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
