import 'dart:async';

import 'package:cat/model/Glitch.dart';
import 'package:cat/model/core/CatPhoto.dart';
import 'package:cat/model/helper/CatPhotoHelper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

class CatProvider extends ChangeNotifier{
  final _helper=CatPhotoHelper();
  final _streamController=StreamController<Either<Glitch,CatPhoto>>();
  Stream<Either<Glitch,CatPhoto>> get catPhotoStream{
    return _streamController.stream;
  }

  Future<void> getTwentyRandomPhoto() async{
    for(int i=0;i<20;i++) {
      final catHelperResult =await _helper.getRandomCatPhoto();
      _streamController.add(catHelperResult);
    }
  }
}