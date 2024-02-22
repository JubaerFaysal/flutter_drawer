import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home_Page());
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  mActioninBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        titleSpacing: 10,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
//elevation: 100,
        backgroundColor: const Color.fromARGB(244, 142, 104, 245),
        actions: [
          IconButton(
              onPressed: () {
                mActioninBar("comment", context);
              },
              icon: const Icon(Icons.comment_bank)),
          IconButton(
              onPressed: () {
                mActioninBar("Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mActioninBar("Setting", context);
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 100,
        child: const Icon(Icons.face),
        backgroundColor: const Color.fromARGB(255, 171, 69, 238),
        onPressed: () {
          mActioninBar("Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Mail",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            mActioninBar("Home Menu", context);
          }
          if (index == 1) {
            mActioninBar("Call Centre", context);
          }
          if (index == 2) {
            mActioninBar("Mail Me", context);
          }  }    ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 128, 51, 159)),
                accountName: Text("Jubaer Ahmed"),
                accountEmail: Text("jubaerfaysal@gmail.com"),
              //  currentAccountPicture: Image.asset('image/IMG_5174 copy.jpg'),
              )),
          const ListTile(
            leading: Icon(Icons.mail),
            title: Text("Inbox"),
              ),
          const ListTile(
              leading: Icon(Icons.send),
              title: Text("Outbox")),
          const ListTile(leading: Icon(Icons.favorite), 
          title: Text("Favorites")),
          const ListTile(
              leading: Icon(Icons.archive),
              title: Text("Archive")),
          const ListTile(
              leading: Icon(Icons.delete), title: Text("Trash")),
              const Divider(),
              const ExpansionTile(title: Text("Labels"),
              children: [
                 ListTile(leading: Icon(Icons.label_important), title: Text("Family")),
                 ListTile(leading: Icon(Icons.label_important), title: Text("Friends")),
                ListTile(leading: Icon(Icons.label_important), title: Text("Work")),
              ],
              ),
              const Divider(),
             const ListTile(leading: Icon(Icons.settings), title: Text("Settings & accout")),

        ],
      ))
    );
  }
}