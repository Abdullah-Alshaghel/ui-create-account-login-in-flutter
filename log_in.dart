import 'package:UI/Account/widget.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
 _LogInState createState() => _LogInState();

}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String id;
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              Color(0xFFE24011),
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
        padding: const EdgeInsets.only(bottom: 5,left: 2,right: 2),
                child: TextFormField(
             keyboardType: TextInputType.number,
             decoration:buildInputDecoration(Icons.attach_email, "Email "),
                  validator: (String value){
                    if(value.isEmpty)
                    {
                      return 'plz Enter your Email';
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
                decoration:buildInputDecoration(Icons.lock,"Password"),
                validator: (String value){
                if(value.isEmpty)
                  {
                return 'Plz Enter your Password';
                  }
                 return null;
    },



    ),
    ),

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
                   textColor:Colors.white,child: Text("login"),

    )
    ),

        ],

    )
    )

    )


        ]
    )
    )


    )
    ]
    )
    )
    )
    )
    );

  }

}