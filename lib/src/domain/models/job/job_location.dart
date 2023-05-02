class Location {
  int id;
  String city;
  String state;
  String country;

  Location({
    required this.id,
    required this.city,
    required this.state,
    required this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "city": city,
        "state": state,
        "country": country,
      };

  String get place => "$city, $state";

  static Location surabaya = Location(
      id: 1, city: "Surabaya", state: "Jawa Timur", country: "Indonesia");

  static Location sidoarjo = Location(
      id: 2, city: "Sidoarjo", state: "Jawa Timur", country: "Indonesia");

  static Location jogja =
      Location(id: 3, city: "Jogja", state: "Yogyakarta", country: "Indonesia");

  static Location bandung = Location(
      id: 4, city: "Bandung", state: "Jawa Barat", country: "Indonesia");

  static Location jakarta = Location(
      id: 5, city: "Jakarta", state: "DKI Jakarta", country: "Indonesia");
}
