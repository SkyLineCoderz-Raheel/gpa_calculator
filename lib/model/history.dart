import 'package:hive/hive.dart';

part 'history.g.dart';

@HiveType(typeId: 0)
class History {
  @HiveField(0)
   String userName;
  @HiveField(1)
   String subTitle;
  @HiveField(2)
   String status;
  @HiveField(3)
   DateTime checkDate;
  @HiveField(4)
   int totalSub;
  @HiveField(6)
  double result;

  History(
    this.userName,
    this.subTitle,
    this.status,
    this.checkDate,
    this.totalSub,
    this.result,
  );
}
