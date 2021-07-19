import 'package:bloco_de_notas/src/modules/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/card_note.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<CardNote> cardNoteList = [
    CardNote(
        'Não esquecer',
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
        'Criação: 08/07/21',
        AppColors.rosa),
    CardNote(
        'Fazer compras',
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua., consecter adipiscing elit, sed incididunt ut labore et dolore aliqua., adasfa ',
        'Criação: 08/07/21',
        AppColors.roxo),
    CardNote(
        'Estudar Flutter',
        'Lorem ipsum dolor testatando que o flutter é muito bom vamos que vamos sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
        'Criação: 08/07/21',
        AppColors.amarelo),
    CardNote(
        'Lembrete para ir ao médico',
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
        'Criação: 08/07/21',
        AppColors.verde),
    CardNote(
        'Nova feature APP Flutter',
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
        'Criação: 08/07/21',
        AppColors.ciano),
    CardNote(
        'Contas',
        'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
        'Criação: 08/07/21',
        AppColors.rosa),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/note_logo_white.png"),
        backgroundColor: AppColors.roxo,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.roxo,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Pesquisar",
                hintStyle: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  letterSpacing: 0.15,
                  color: Colors.black.withOpacity(0.54),
                ),
                labelStyle: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  letterSpacing: 0.15,
                  color: Colors.black.withOpacity(0.54),
                ),
                // border: InputBorder.none,
                // errorBorder: InputBorder.none,
                // enabledBorder: InputBorder.none,
                // focusedBorder: InputBorder.none,
                // disabledBorder: InputBorder.none,
                // focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: StaggeredGridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(2.0),
                children: cardNoteList,
                staggeredTiles: cardNoteList
                    .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                    .toList(),
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewNotePage()));
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0.0, 3),
                  blurRadius: 5.0,
                  spreadRadius: -1.0),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
