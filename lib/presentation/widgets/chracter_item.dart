// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:movieapp/constants/my_colors.dart';
import 'package:movieapp/constants/strings.dart';
import 'package:movieapp/data/models/characters.dart';

class CharacterItem extends StatelessWidget {
  final Character character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, characterDetailsScreen,
            arguments: character),
        child: GridTile(
          footer: Hero(
            tag: character.id,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                '${character.name}',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: MyColors.myWhite,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: Container(
            color: MyColors.myGray,
            child: character.image.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: 'assets/images/Loading.gif',
                    image: character.image,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/placeholder.jpg'),
          ),
        ),
      ),
    );
  }
}
