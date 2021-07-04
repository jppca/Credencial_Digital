import 'package:flutter/material.dart';

class WData extends StatelessWidget {
  final String programaAcademico;
  final String correoInstitucional;
  final String matriculaAcademica;

  const WData(
      {Key key,
      @required this.programaAcademico,
      @required this.correoInstitucional,
      @required this.matriculaAcademica})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Card(
        elevation: 5,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 1.0, color: Color.fromRGBO(241, 249, 255, 1)),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: new EdgeInsets.all(30),
                      child: Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          this.programaAcademico,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Programa académico',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 1.0, color: Color.fromRGBO(241, 249, 255, 1)),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: new EdgeInsets.all(30),
                      child: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          this.correoInstitucional,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Correo Institucional',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 1.0, color: Color.fromRGBO(241, 249, 255, 1)),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: new EdgeInsets.all(30),
                      child: Icon(
                        Icons.note,
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          this.matriculaAcademica,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Matricula',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
