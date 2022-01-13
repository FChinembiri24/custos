import 'package:custos/views/blue.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,

        drawer: Drawer(

          child: ListView(

            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.amberAccent,

                    image: DecorationImage(image: AssetImage('assets/Custos.PNG',),
                        fit: BoxFit.cover)
                ),
                child: Text("X-SYS"),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Dashboard"),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("crime updates"),
              ),
              GestureDetector(
                onTap: () async {
                  var whatsappUrl ="whatsapp://send?phone=263775611052";
                  if( await canLaunch(whatsappUrl)) {
                    launch(whatsappUrl);
                  }
                  else
                  {  SnackBar(
                    content: Text('Whatsapp is not detected'),

                  );
                  launch("smsto://263775611052");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Contact us"),
                ),
              ),
              GestureDetector(
                onTap: ()=>launch("tel://911"),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Emergency call"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Log out"),
              ),

            ],
          ),
        ),
        body: SafeArea(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector
                        ( onTap: (){scaffoldKey.currentState!.openDrawer();},
                          child: const Icon(Icons.menu, color: Colors.grey,size: 52.0,)),
                      GestureDetector(
                          onTap:(){ },
                          child: Image.asset("assets/Custos.png",width: 64.0,)),
                      GestureDetector(
                          onTap:(){ } ,
                          child: Image.asset("assets/profile1.png",width: 52.0,)
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),//Todo
                  child: Text(
                    "Welcome \nSelect an option",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Wrap(
                      spacing:20,
                      runSpacing: 20.0,
                      children: <Widget>[
                        Row(
                          children: [
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder:(context)=> BtDevices()));
                              },
                              child: SizedBox(
                                width:160.0,
                                height: 160.0,
                                child: Card(

                                  color: Colors.grey,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)
                                  ),
                                  child:Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset("assets/checkIn.png",width: 64.0,),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            const Text(
                                              "get secured",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap:(){} ,
                              child: SizedBox(
                                width:160.0,
                                height: 160.0,
                                child: Card(

                                  color: Colors.grey,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)
                                  ),
                                  child:Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset("assets/schedule.png",width: 64.0,),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            const Text(
                                              "Locations",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: (){
                           },
                          child: SizedBox(
                            width:320.0,
                            height: 160.0,
                            child: Card(

                              color: Colors.blueGrey,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/Details1.png",width: 64.0,),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const Text(
                                          "About Us",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text(
                                          "",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
