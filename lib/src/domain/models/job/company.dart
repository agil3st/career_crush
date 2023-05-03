import 'package:career_crush/src/domain/models/job/job_location.dart';

class Company {
  String name;
  String companySize;
  String logoUrl;
  String industry;
  String website;
  Location location;

  Company({
    required this.name,
    required this.companySize,
    required this.logoUrl,
    required this.industry,
    required this.website,
    required this.location,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        companySize: json["companySize"],
        logoUrl: json["logoURL"],
        industry: json["industry"],
        website: json["website"],
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "companySize": companySize,
        "logoURL": logoUrl,
        "industry": industry,
        "website": website,
        "location": location.toJson(),
      };

  static Company company1 = Company(
    name: 'PT. Solaytic Jaya Abadi',
    companySize: "20 - 50",
    logoUrl: 'https://uilogos.co/img/logomark/solaytic.png',
    industry: "Kecantikan",
    website: "https://www.solaytic.com",
    location: Location.sidoarjo,
  );

  static Company company2 = Company(
    name: 'PT Asgardia Indonesia',
    companySize: "1 - 10",
    logoUrl: 'https://uilogos.co/img/logomark/asgardia.png',
    industry: "Teknologi Informasi",
    website: "https://www.asgardia.com",
    location: Location.surabaya,
  );

  static Company company3 = Company(
    name: 'PT. Aven Makmur',
    companySize: "1000 - 5000",
    logoUrl: 'https://uilogos.co/img/logomark/aven.png',
    industry: "Finansial",
    website: "https://www.aven.co",
    location: Location.bandung,
  );

  static Company company4 = Company(
    name: 'PT Agung Makmur Sejahtera',
    companySize: "500 - 1000",
    logoUrl: 'https://uilogos.co/img/logomark/treva.png',
    industry: "Air Ways",
    website: "https://www.treva.com",
    location: Location.jakarta,
  );

  static Company company5 = Company(
    name: 'PT Tvit Indah Sejahtera',
    companySize: "50 - 100",
    logoUrl: 'https://uilogos.co/img/logomark/tvit.png',
    industry: "Telecomunication",
    website: "https://www.tvit.co.id",
    location: Location.jogja,
  );
}
