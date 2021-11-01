import 'dart:convert';

class CatPhoto{
  final String id;
  final String url;
  final int width;
  final int height;

  CatPhoto(this.id, this.url, this.width, this.height);
  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'url':url,
      'width':width,
      'height':height
    };
  }


  static CatPhoto fromMap(Map<String ,dynamic> map)
   {
    if(map==null) return null;

    return CatPhoto(map['id'], map['url'], map['width'], map['height']);
  }

  String toJson()=>json.encode(toMap());

  static CatPhoto fromJson(String soruce)=>fromMap(json.decode(soruce));

  @override
  String toString() {
    return 'CatPhoto{id: $id, url: $url, width: $width, height: $height}';
  }
}