import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../generated/l10n.dart';

showToast(msg) {
  EasyLoading.showToast(msg);
}

showSuccess(String str) {
  EasyLoading.showSuccess(str);
}

showError(String? str) {
  EasyLoading.showError(str ?? S.current.systemError);
}

showInfo(String str) {
  EasyLoading.showInfo(str);
}

showLoading() {
  EasyLoading.show();
}

dismissLoading() {
  EasyLoading.dismiss();
}
