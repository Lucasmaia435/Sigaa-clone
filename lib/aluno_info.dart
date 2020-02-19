import 'package:flutter/material.dart';

Map user = {
  'Nome': "Lucas Maia R. Costa",
  'Matricula': "20200044441",
  "Periodos": [
    {
      'Periodo': '2020.1',
      'Turmas': [
        {
          'Nome': "GEOMETRIA EUCLIDIANA",
          'Local': "CIVT - B204",
          'Horario': "2M56 (17/02/2020 - 04/07/2020)",
          'Situacao': 'MAT',
          'Notas' : [7.3,7.7,6.3,'-'],
          'Faltas' : 2,
        },
        {
          'Nome': "ANÁLISE COMBINATÓRIA",
          'Local': "CIVT - B308",
          'Horario': "5M34 (17/02/2020 - 04/07/2020)",
          'Situacao': 'MAT',
          'Notas' : [6,8,9.5,'-'],
          'Faltas' : 0,
        },
        {
          'Nome': "MATEMÁTICA ELEMENTAR",
          'Local': "CIVT - A306",
          'Horario': "24T12 (17/02/2020 - 04/07/2020)",
          'Situacao': 'MAT',
          'Notas' : [5.4,7.2,8.1,'-'],
          'Faltas': 3,
        }
      ],
    }
  ],
};

var alunoImage = AssetImage('assets/me.jpeg');
