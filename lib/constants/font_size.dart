import 'package:get/get.dart';

const _minimalDefaultWidthOne = 400;

const _minimalDefaultWidthTwo = 350;

double _isLowerThanDefaultWidth(double font) {
  try {
    if (Get.width > _minimalDefaultWidthTwo &&
        Get.width < _minimalDefaultWidthOne) {
      return font - 1;
    }
    if (Get.width < _minimalDefaultWidthTwo) {
      return font - 2;
    }
    return font;
  } catch (_) {
    return font;
  }
}

double get font8 => _isLowerThanDefaultWidth(8);

double get font9 => _isLowerThanDefaultWidth(9);

double get font10 => _isLowerThanDefaultWidth(10);

double get font11 => _isLowerThanDefaultWidth(11);

double get font11p5 => _isLowerThanDefaultWidth(11.5);

double get font12 => _isLowerThanDefaultWidth(12);

double get font12p5 => _isLowerThanDefaultWidth(12.5);

double get font13 => _isLowerThanDefaultWidth(13);

double get font14 => _isLowerThanDefaultWidth(14);

double get font14p5 => _isLowerThanDefaultWidth(14.5);

double get font15 => _isLowerThanDefaultWidth(15);

double get font16 => _isLowerThanDefaultWidth(16);

double get font17 => _isLowerThanDefaultWidth(17);

double get font18 => _isLowerThanDefaultWidth(18);

double get font18p5 => _isLowerThanDefaultWidth(18.5);

double get font19 => _isLowerThanDefaultWidth(19);

double get font20 => _isLowerThanDefaultWidth(20);

double get font21 => _isLowerThanDefaultWidth(21);

double get font22 => _isLowerThanDefaultWidth(22);

double get font23 => _isLowerThanDefaultWidth(23);

double get font24 => _isLowerThanDefaultWidth(24);

double get font25 => _isLowerThanDefaultWidth(25);

double get font26 => _isLowerThanDefaultWidth(26);

double get font27 => _isLowerThanDefaultWidth(27);

double get font28 => _isLowerThanDefaultWidth(28);

double get font29 => _isLowerThanDefaultWidth(29);

double get font30 => _isLowerThanDefaultWidth(30);

double get font31 => _isLowerThanDefaultWidth(31);

double get font32 => _isLowerThanDefaultWidth(32);

double get font33 => _isLowerThanDefaultWidth(33);

double get font34 => _isLowerThanDefaultWidth(34);

double get font35 => _isLowerThanDefaultWidth(35);

double get font36 => _isLowerThanDefaultWidth(36);

double get font37 => _isLowerThanDefaultWidth(37);

double get font38 => _isLowerThanDefaultWidth(38);

double get font39 => _isLowerThanDefaultWidth(39);

double get font40 => _isLowerThanDefaultWidth(40);

double get font41 => _isLowerThanDefaultWidth(41);

double get font42 => _isLowerThanDefaultWidth(42);

double get font47 => _isLowerThanDefaultWidth(47);

double get font48 => _isLowerThanDefaultWidth(48);

double get font59 => _isLowerThanDefaultWidth(59);

double get font60 => _isLowerThanDefaultWidth(60);

double get font95 => _isLowerThanDefaultWidth(95);

double get font96 => _isLowerThanDefaultWidth(96);
