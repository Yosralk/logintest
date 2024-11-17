import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //leading:Iconbtn(txt: "Hello leading", icon: Icons.add_box),
        title: Text("data"),
        centerTitle: true,
        actions: [
          Iconbtn(txt: "Home", icon: Icons.home),
          Iconbtn(txt: "Settings", icon: Icons.settings),
          Iconbtn(txt: "Products", icon: Icons.list_sharp),

        ],
        backgroundColor: Color(0xCD347aeb),
        flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 100),
          child: Center(child:Text("space",style: TextStyle(fontSize: 30),),
          ),
        ),
        bottom: PreferredSize(preferredSize: Size(10, 200),
            child: Text("bottom from bottom pro")),
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("sad")));
      },
      child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey.shade900,
        shape: CircleBorder(),),
      
      drawer:Drawer(
        child: Column(
          children: [
            SizedBox(height: 50,),
            CircleAvatar(backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png"),
            ),
            ListTFun(txt: "Account", icon: Icons.person),
            ListTFun(txt: "Settings", icon: Icons.settings),
            ListTFun(txt: "logout", icon: Icons.logout)
            
          ],
        ),
      ),
      
    );


  }


  Widget Iconbtn({ required String txt, required IconData icon}) {
    return IconButton(onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(txt)));
    },

        icon: Icon(icon));
  }
  Widget ListTFun({required String txt,required IconData icon}){
    return ListTile(
      title: Text(txt),
      leading: Icon(icon),
    );
  }


}




