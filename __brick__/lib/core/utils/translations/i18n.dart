

class GlobalTranslationMap {
  static Map<String, String> translations = {};

  static void injectTranslation(Map<String,String> json){
    translations = json;
  }
}

extension I18n on String {
  String get i18n => GlobalTranslationMap.translations[this] ?? this;
}