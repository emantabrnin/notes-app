import 'package:hive/hive.dart';

part 'note_model.g.dart';
@HiveType(typeId: 0)
class noteModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int coloe;

  noteModel(this.title, this.subTitle, this.date, this.coloe);
}
