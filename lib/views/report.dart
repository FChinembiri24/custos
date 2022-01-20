import 'package:custos/helpers/variable.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:custos/backend/dbMethods';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override


        String hint="username";
    String hint1="fullname";
    String hint2="phone Number";
    String hint3="address";
    String hint4="Report";
    bool done=false;
        TextEditingController user =new TextEditingController();
    TextEditingController name =new TextEditingController();

    TextEditingController address =new TextEditingController();
    TextEditingController services =new TextEditingController();
    var number;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                child: Text(
                    "Post report"
                ),
              )
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: user,

                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hint,
                    contentPadding:
                    const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10)),
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: name,

                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hint1,

                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10)),
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10))),
              ),
              const SizedBox(
                height: 30,
              ),
              IntlPhoneField(

                onChanged: (phone) {
                  number=phone.completeNumber;
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },

                initialCountryCode: 'ZW',
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hint2,
                    contentPadding:
                    const EdgeInsets.only(left: 18, bottom: 0 ,top: 13),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10)),
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: address,

                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hint3,
                    contentPadding:
                    const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10)),
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                minLines: 8,
                maxLines: 13,
                controller: services,

                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hint4,
                    contentPadding:
                    const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10)),
                    hintStyle: const TextStyle(color: Colors.blueGrey),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30.8),
                        borderSide: const BorderSide(color: Colors.white10))),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    child: ElevatedButton(
                      onPressed: ()async{
                        SnackBar(content: TextField());


                        report();
                        DbMethods dbMethods=DbMethods();

                        await dbMethods.saveUser(user.text, name.text,Variabless.email, number.text, address.text, services.text,false);

                      },
                      child: const Text("Report"),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amberAccent),
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
  Widget report(){
      return  SnackBar(
        content: Text('your report has been submitted'),

      );
  }
}
