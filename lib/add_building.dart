import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'add_floor.dart';


class AddBuilding extends StatefulWidget {
  @override
  _AddBuildingState createState() => _AddBuildingState();
}

class _AddBuildingState extends State<AddBuilding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Building"),
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        height :MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(16.0),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text('Add Building',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              Divider(
                thickness: 2,
                color: Colors.grey[500],
              ),

              SizedBox(height: 40.0),

              // Room Name Input
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(30.0))
                  // ),
                    hintText: 'Building Name',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth:MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: RaisedButton(onPressed:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddFloor()),
                      );
                    },
                      color: Colors.grey[600],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Text('Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:16,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
