abstract class Validator {
  //Eメールアドレスのバリデーション
  static String? validateEmail(value) {
    String pattern = r'^[0-9a-z_./?-]+@([0-9a-z-]+\.)+[0-9a-z-]+$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return '正しいメールアドレスを入力してください。';
    }
    return null;
  }

  //パスワードのバリデーション
  static String? validatePassword(value) {
    String pattern = r'^[a-zA-Z0-9]{6,}$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'パスワードは６文字以上の英数字を入力してください。';
    }
    return null;
  }

  //ユーザーネームのバリデーション
  static String? validateUsername(value) {
    String pattern = r'^[a-zA-Z0-9]{3,}$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'ユーザーネームは３文字以上の英数字を入力してください。';
    }
    return null;
  }
}
