import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CFT extends StatefulWidget {
  @override
  _CFTState createState() => _CFTState();
}

double lf, li, wf, wi, hf, hi, cft, cost, total;
String cf, tl;

var blank = new FocusNode();


TextEditingController l_foot = new TextEditingController();
TextEditingController l_inch = new TextEditingController();
TextEditingController w_foot = new TextEditingController();
TextEditingController w_inch = new TextEditingController();
TextEditingController h_foot = new TextEditingController();
TextEditingController h_inch = new TextEditingController();
TextEditingController amount = new TextEditingController();

String cft_text = '';
String total_cost = '';

class _CFTState extends State<CFT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
            child: Text("CFT Calculator",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70))),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(blank);
          },
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black87,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Length",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 25.0,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                    BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Foot",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: l_foot,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Inch",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: l_inch,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        " Width",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 25.0,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Foot",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: w_foot,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Inch",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: w_inch,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Height",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 25.0,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Foot",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: h_foot,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "Inch",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: h_inch,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Amount(Per CFT)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 25.0,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 120,
                        child: Form(
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide:
                                BorderSide(color: Colors.white70, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide(
                                    color: Colors.teal[200], width: 3.0),
                              ),
                              hintText: "BDT",
                              hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                            ),
                            controller: amount,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Empty field!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              lf = double.parse(l_foot.text);
                              li = double.parse(l_inch.text);
                              wf = double.parse(w_foot.text);
                              wi = double.parse(w_inch.text);
                              hf = double.parse(h_foot.text);
                              hi = double.parse(h_inch.text);
                            });

                            cft = (lf + li / (12)) *
                                (wf + wi / (12)) *
                                (hf + hi / (12));

                            cf = cft.toStringAsFixed(3);

                            cft_text = 'Total Volume : $cf Cft';
                            total_cost = '';
                          },
                          elevation: 10.0,
                          color: Colors.grey[700],
                          textColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          child: Text(
                            "CFT",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 100,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              cost = double.parse(amount.text);
                            });

                            cft = (lf + li / (12)) *
                                (wf + wi / (12)) *
                                (hf + hi / (12));
                            total = cft * cost;

                            tl = total.toStringAsFixed(2);

                            total_cost = 'Total Cost : $tl Tk';
                          },
                          elevation: 10.0,
                          color: Colors.grey[700],
                          textColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          child: Text(
                            "Cost",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    cft_text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white70),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    total_cost,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
