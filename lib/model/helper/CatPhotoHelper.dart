import 'dart:convert';

import 'package:cat/model/core/CatPhoto.dart';
import 'package:cat/model/service/CatPhotoApi.dart';
import 'package:cat_flutter/model/Glitch.dart';
import 'package:cat_flutter/model/NoInternetGlitch.dart';
import 'package:cat_flutter/model/core/CatPhoto.dart';
import 'package:cat_flutter/model/service/CatPhotoApi.dart';
import 'package:dartz/dartz.dart';

import '../Glitch.dart';
import '../NoInternetGlitch.dart';

class CatPhotoHelper {
  final api = CatPhotoApi();

  Future<Either<Glitch, CatPhoto>> getRandomCatPhoto() async {
    final apiResult = await api.getRandomCatPhoto();
    return apiResult.fold((l) => Left(NoInternetClitch()),
        (r) => Right(CatPhoto.fromMap(jsonDecode(r)[0])));
  }
}
