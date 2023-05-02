import 'package:career_crush/src/domain/models/job/company.dart';

class Job {
  String title;
  String salary;
  String description;
  String qualification;
  int rating;
  String type;
  String placement;
  String duration;
  String category;
  String graduation;
  String experience;
  String baseLocation;
  String deadline;
  Company company;

  Job({
    required this.title,
    required this.salary,
    required this.description,
    required this.qualification,
    required this.rating,
    required this.type,
    required this.placement,
    required this.duration,
    required this.category,
    required this.graduation,
    required this.experience,
    required this.baseLocation,
    required this.deadline,
    required this.company,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        title: json["title"],
        salary: json["salary"],
        description: json["description"],
        qualification: json["qualification"],
        rating: json["rating"],
        type: json["type"],
        placement: json["placement"],
        duration: json["duration"],
        category: json["category"],
        graduation: json["graduation"],
        experience: json["experience"],
        baseLocation: json["baseLocation"],
        deadline: json["deadline"],
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "salary": salary,
        "description": description,
        "qualification": qualification,
        "rating": rating,
        "type": type,
        "placement": placement,
        "duration": duration,
        "category": category,
        "graduation": graduation,
        "experience": experience,
        "baseLocation": baseLocation,
        "deadline": deadline,
        "company": company.toJson(),
      };

  static List<Job> jobList = [
    // Data 1
    Job(
      title: "Marketing Specialist",
      salary: "IDR 8.000.000 - 10.000.000",
      description:
          "The Marketing Specialist will be responsible for developing and implementing marketing stratinggies to promote our products and services.",
      qualification:
          "Bachelor's degree in Marketing, Business Administration, or related field, minimum 3 years of experience in marketing or related field, strong communication and interpersonal skills.",
      rating: 4,
      type: "Full-time",
      placement: "Jakarta, Indonesia",
      duration: "Permanent",
      category: "Marketing",
      baseLocation: 'Remote',
      graduation: "Bachelor's degree",
      experience: "3 years",
      deadline: "July 15, 2022",
      company: Company.company4,
    ),
    // Data 2
    Job(
      title: "Front Desk Receptionist",
      salary: "IDR 4.000.000 - 5.000.000",
      description:
          "The Front Desk Receptionist will be responsible for greeting and assisting customers, answering and directing phone calls, and performing other administrative duties as assigned.",
      qualification:
          "High school diploma or equivalent, minimum 1 year of experience in customer service or related field, excellent communication and customer service skills.",
      rating: 3,
      type: "Full-time",
      placement: "Surabaya, Indonesia",
      duration: "Permanent",
      baseLocation: 'Remote',
      category: "Customer Service",
      graduation: "Bachelor's degree",
      experience: "3 years",
      deadline: "July 15, 2022",
      company: Company.company3,
    ),
    // Data 3
    Job(
      title: "Production Supervisor",
      salary: "IDR 12.000.000 - 15.000.000",
      description:
          "The Production Supervisor will be responsible for overseeing production processes, ensuring production targets are met, and managing production staff.",
      qualification:
          "Bachelor's degree in Engineering, Business Administration, or related field, minimum 5 years of experience in production or related field, strong leadership and communication skills.",
      rating: 5,
      type: "Full-time",
      placement: "Bandung, Indonesia",
      duration: "Permanent",
      baseLocation: 'Remote',
      category: "Manufacturing",
      graduation: "Bachelor's degree",
      experience: "3 years",
      deadline: "July 15, 2022",
      company: Company.company1,
    ),
    // Data 4
    Job(
      title: "Software Engineer",
      salary: "IDR 15.000.000 - 20.000.000",
      description:
          "The Software Engineer will be responsible for designing, developing, and maintaining software applications.",
      qualification:
          "Bachelor's degree in Computer Science or related field, minimum 3 years of experience in software development, proficiency in programming languages such as Java or Python.",
      rating: 4,
      type: "Full-time",
      placement: "Yogyakarta, Indonesia",
      duration: "Permanent",
      baseLocation: 'Remote',
      category: "Information Technology",
      graduation: "Bachelor's degree",
      experience: "3 years",
      deadline: "July 15, 2022",
      company: Company.company2,
    ),
    // Data 5
    Job(
      title: "Accounting Manager",
      salary: "IDR 20.000.000 - 25.000.000",
      description:
          "The Accounting Manager will be responsible for overseeing the accounting department, managing financial transactions, and preparing financial reports.",
      qualification:
          "Bachelor's degree in Accounting, Finance, or related field, minimum 7 years of experience in accounting or related field, strong analytical and leadership skills.",
      rating: 5,
      type: "Full-time",
      placement: "Semarang, Indonesia",
      duration: "Permanent",
      baseLocation: 'Remote',
      category: "Accounting",
      graduation: "Bachelor's degree",
      experience: "3 years",
      deadline: "July 15, 2022",
      company: Company.company3,
    ),
  ];
}
