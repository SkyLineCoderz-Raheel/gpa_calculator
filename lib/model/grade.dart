import 'package:hive/hive.dart';

part 'grade.g.dart';

@HiveType(typeId:1)
class Grade {
  @HiveField(7)
  int A=80;
  @HiveField(8)
  int B = 60;
  @HiveField(9)
  int C = 40;
  @HiveField(10)
  int D = 20;
  Grade(
      this.A,
      this.B,
      this.C,
      this.D,
      );
}
