import 'package:flutter/material.dart';
import 'package:flutter_notebook/provider/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Initiate ------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserProvider>().fetchPost();
  }

  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<UserProvider>(context); //Create UserProvider Object

    return Scaffold(
      appBar: AppBar(title: Text("Provider API Calling", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 58 ==> Provider API Calling ------------------

      body: SafeArea(
          child: Builder(
              builder: (context) {

                if(userProvider.isLoading){
                  return Center(
                    child: CircularProgressIndicator(), //----- Progress Indicator
                  );
                }
                else {

                  //------------ Show Data ------------
                  return ListView.builder(
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: Text(userProvider.allUserList[index].id.toString()),
                        title: Text(userProvider.allUserList[index].name.toString()),
                        subtitle: Text(userProvider.allUserList[index].email.toString()),
                      );
                    },
                    itemCount: userProvider.allUserList.length,
                  );


                  // return SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: DataTable(
                  //     columns: const [
                  //       DataColumn(label: Text('ID')),
                  //       DataColumn(label: Text('Name')),
                  //       DataColumn(label: Text('Email')),
                  //     ],
                  //     rows: userProvider.allUserList.map((user) {
                  //       return DataRow(cells: [
                  //         DataCell(Text(user.id.toString())),
                  //         DataCell(Text(user.name.toString())),
                  //         DataCell(Text(user.email.toString())),
                  //       ]);
                  //     }).toList(),
                  //   ),
                  // );

                  // return Table(
                  //   border: TableBorder.all(),
                  //   children: [
                  //     TableRow(children: [
                  //       Text('ID'), Text('Name'), Text('Email'),
                  //     ]),
                  //     ...userProvider.allUserList.map((user) => TableRow(children: [
                  //       Text(user.id.toString()),
                  //       Text(user.name.toString()),
                  //       Text(user.email.toString()),
                  //     ])),
                  //   ],
                  // );


                }

              },
          )
      ),
    );
  }
}