import 'package:flutter/material.dart';

class WCrede extends StatelessWidget {
  final String imgheader;
  final String imguser;
  final String tipeuser;
  final String name;
  final String school;
  final String career;
  final String entry;
  final String idSchool;
  final String periods;

  const WCrede(
      {Key key,
      @required this.imgheader,
      @required this.imguser,
      @required this.tipeuser,
      @required this.name,
      @required this.school,
      @required this.career,
      @required this.entry,
      @required this.idSchool,
      @required this.periods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                child: Container(
                  width: 200,
                  height: 80,
                  child: Image.asset(
                    this.imgheader,
                    isAntiAlias: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Container(
                            margin:
                                EdgeInsets.only(bottom: 5, left: 5, right: 5),
                            width: 80,
                            height: 113,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(this.imguser),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          this.tipeuser,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              fontFamily: 'Arial'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: 5,
                                  ),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 15,
                                              bottom: 3,
                                              left: 3,
                                              right: 3),
                                          child: Text(
                                            this.name,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Arial'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          child: Text(
                                            this.school,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Arial'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          child: Text(
                                            this.career,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Arial'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          child: Text(
                                            'Periodo de ingreso:${this.entry}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Arial'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 3,
                                              bottom: 15,
                                              left: 3,
                                              right: 3),
                                          child: Text(
                                            'Matricula:${this.idSchool}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Arial'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/credefondo.png',
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(),
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    this.periods,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 10,
                                        fontFamily: 'Arial'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
