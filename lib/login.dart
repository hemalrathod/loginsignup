import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover)
        ),
        child:Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Container(
                padding:EdgeInsets.only(left:35,top:130),
                child:Text('Welcome \nBack',style:TextStyle(
                  color: Colors.white,fontSize: 33
                  )
                )
              ),
              SingleChildScrollView(
                child: Container(
                  padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,right:35,left:35),
                  child:Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          filled:true,
                          fillColor: Colors.grey.shade100
                        ),
                      ),
                      SizedBox(
                        height:30
                      ),
                      TextField(
                        obscureText:true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            filled:true,
                            fillColor: Colors.grey.shade100
                        ),
                      ),
                      SizedBox(
                        height:40
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign In',style:TextStyle(
                            fontSize: 27,fontWeight: FontWeight.bold
                          )),
                          CircleAvatar(
                            radius: 30,
                              backgroundColor: Color(0xff4c505b),
                            child:IconButton(
                              onPressed: (){},
                              icon:Icon(Icons.arrow_forward),
                              color:Colors.white
                            )
                          )
                        ],
                      )
                    ],
                  )
                ),
              )
            ],
          )
        )
    );
  }
}
