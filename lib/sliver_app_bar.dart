import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({super.key});

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [

              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.blue,
                pinned: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("CodingBloom", style: TextStyle(color: Colors.white),),
                  background: Image.asset("assets/images/wallpaper-2.jpg", fit: BoxFit.fill),
                ),

                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings))
                ],
              ),

              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ListTile(
                      leading: Text("$index"),
                      title: Text("Sliver AppBar"),
                      subtitle: Text("Demo"),
                    );
                  },
                    childCount: 20
                  )
              )
            ],
          )
      ),
    );
  }
}
