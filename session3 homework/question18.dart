void main() {
  Map<String, String?> env = {
    "ENV": "production",
    "Api key": null,
    "DB name": "myDb"
  };
  String envName = (env["ENV"] ?? "development").toUpperCase();
  String apiKey = (env["Api key"] ?? "default_key").toUpperCase();
  String dbName = (env["DB name"] ?? "default_db").toUpperCase();

  print("ENV: $envName");
  print("Api key: $apiKey");
  print("DB name: $dbName");

  if ((env["ENV"] ?? "development").toLowerCase() == "production") {
    print("Prod ready");
  } else {
    print("Non-prod");
  }
}
