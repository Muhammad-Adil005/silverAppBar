import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // snap: false,
              // pinned: false,
              // floating: false,
              snap: false,
              pinned: true,
              floating: true,
              centerTitle: true,
              title: const Text('Hello'),
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                /*title: const Text(
                  "hello",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),*/
                background: Image.network(
                  "https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png",
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 230,
              backgroundColor: Colors.greenAccent[400],
              leading: IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Menu',
                onPressed: () {},
              ), //IconButton
              actions: [
                IconButton(
                  icon: const Icon(Icons.comment),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ), //IconButton
                IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ), //IconButton
              ], //<Widget>[]
            ), //SliverAppBar
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 51,
                (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                            color: Colors.greenAccent[400]) //TextStyle
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
