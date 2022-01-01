import 'package:UI/Account/userserver.dart';
import 'package:UI/Account/widget.dart';
import 'package:UI/models/models.dart';
import 'package:flutter/material.dart';


class createAccount extends StatefulWidget {
  @override
  _createAccount createState() => _createAccount();
}

class _createAccount extends State<createAccount> {




  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();




  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  DateTime pickedData;


  void initState(){
    super.initState();
    pickedData = DateTime.now();
      if(pickedData == null)
      {
        return null;
      }
      }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             new Container(
            decoration: new BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.4, 0.9],
                colors: [
                  Color(0xFFFF835F),
                  Color(0xFFFC663C),
                  Color(0xFFFF3F1A),
                ]
            )
    )
    ),
             Positioned(
              child: Padding(
                 padding: const EdgeInsets.all(8.0),
               child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               Card(
                elevation: 4.0,
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, right: 20),
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15)
                ),
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[

                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:10,left: 5,right: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"الاسم"),
                    validator: (String value){
                      if(value.isEmpty) {
                        return 'الرجاء ادخال الاسم';
                      }
                      return null;
                    },
                    onSaved: (String value){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"الايميل"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'الرجاء الادخال';
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'الارجاء ادخال الايميل بشكل صحيح';
                      }
                      return null;
                    },
                    onSaved: (String value){
                    },
                  ),
                ),
               

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,left: 5,right: 5),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"كلمة السر"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'الرجاء ادخال كلمة السر';
                      }
                      return null;
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,left: 5,right: 5),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"تاكيد كلمة السر"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'الرجاء اعادة ادخال كلمة السر ';
                      }
                      print(password.text);

                      print(confirmpassword.text);

                      if(password.text!=confirmpassword.text){
                        return "كلمة السر غير متطابقة";
                      }

                      return null;
                    },

                  ),
                ),

                ListTile(
                  title: Text(" ${pickedData.year},${pickedData.month}, ${pickedData.day}"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: _pickDate,


            ) ,


                SizedBox(
                  width: 100,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){

                      if(_formkey.currentState.validate())
                      {
                        print("successful");

                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("انشاء الحساب"),

                  ),
                )
              ],
            ),

          ),

        ),
        ]
               ),

            ),

      ),
        ]
    ),

    ),

    ),

    ),

    );


  }
  _pickDate()async {
    DateTime date = await  showDatePicker(
      context: context ,
      initialDate: pickedData,
      firstDate: DateTime(DateTime.now().year-100),
      lastDate: DateTime(DateTime.now().year+5),
    );

    if (date != null)
      setState(() {
        pickedData = date;

      });



  }

  }
