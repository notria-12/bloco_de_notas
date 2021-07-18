import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromRGBO(245, 245, 250, 1)),
        width: 145,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.rosa,
              ),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Não esquecer',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Colors.black.withOpacity(
                        0.54,
                      ),
                      size: 14,
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.black.withOpacity(
                        0.54,
                      ),
                      size: 14,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.black.withOpacity(
                        0.54,
                      ),
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Text('Criação: 08/07/21',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Roboto',
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                            fontWeight: FontWeight.w400,
                            fontSize: 10)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
