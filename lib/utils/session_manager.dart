import 'package:delivery_app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Login_Status { NEW_USER, LOGGED_IN, LOGGED_OUT }

const String DateFormat = 'yyyy-MM-dd';

class SessionManager {
  static final String KEY_LOGGEDIN = 'logged_in';
  static final String KEY_EMAIL = 'key_email';
  static final String KEY_USERNAME = 'key_username';
  static final String KEY_USER_ID = 'key_user_id';
  static final String KEY_GENDER = 'key_gender';
  static final String KEY_PHONE = 'key_phone';
  static final String KEY_MOBILE = 'key_mobile';
  static SharedPreferences _sharedPrefs;

  static void initialize(SharedPreferences sharedPreferences) {
    _sharedPrefs = sharedPreferences;
  }

  static Login_Status isLogged() {
    var loggedIn = _sharedPrefs.getString(KEY_LOGGEDIN) ?? false;

    if (loggedIn == 'true') {
      return Login_Status.LOGGED_IN;
    } else {
      return Login_Status.LOGGED_OUT;
    }
  }

  static void saveUserInfoToLocal(User userInfo) {
    SessionManager.setUserId(userInfo.uid);
    SessionManager.setUserName(userInfo.name);
    SessionManager.setEmail(userInfo.email);
    SessionManager.setGender(userInfo.gender);
    SessionManager.setPhone(userInfo.phone);
    SessionManager.setMobile(userInfo.mobile);
  }

  static bool isLoggin(){
    if(getUserId().isNotEmpty) return true;
    return false;
  }

  static String getUserId() {
    return _sharedPrefs.getString(KEY_USER_ID) ?? '';
  }

  static void setUserId(String userId) {
    _sharedPrefs.setString(KEY_USER_ID, userId);
  }

  static void hasLoggedIn() {
    _sharedPrefs.setString(KEY_LOGGEDIN, 'true');
  }

  static void hasLoggedOut() {
    _sharedPrefs.setString(KEY_LOGGEDIN, 'false');
    handleClearAllSettging();
  }

  static void handleClearAllSettging() {
    setUserId(null);
    setUserName('');
    setEmail('');
  }

  static String getUserName() {
    return _sharedPrefs.getString(KEY_USERNAME) ?? '';
  }

  static void setUserName(String username) {
    _sharedPrefs.setString(KEY_USERNAME, username);
  }

  static String getEmail() {
    return _sharedPrefs.getString(KEY_EMAIL) ?? '';
  }

  static void setEmail(String email) {
    _sharedPrefs.setString(KEY_EMAIL, email);
  }

  static String getGender() {
    return _sharedPrefs.getString(KEY_GENDER) ?? '';
  }

  static void setGender(String gender) {
    _sharedPrefs.setString(KEY_GENDER, gender);
  }

  static String getPhone() {
    return _sharedPrefs.getString(KEY_PHONE) ?? '';
  }

  static void setPhone(String phone) {
    _sharedPrefs.setString(KEY_PHONE, phone);
  }

  static String getMobile() {
    return _sharedPrefs.getString(KEY_MOBILE) ?? '';
  }

  static void setMobile(String mobile) {
    _sharedPrefs.setString(KEY_MOBILE, mobile);
  }
}
