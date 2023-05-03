import 'package:career_crush/src/domain/models/job/company.dart';

class Job {
  String title;
  String salary;
  String description;
  String qualification;
  double rating;
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

  static List<Job> featuredJobs = [
    Job(
        title: "Content Writer",
        salary: "IDR 7.000.000 - 9.000.000",
        description:
            "We are looking for a creative and detail-oriented Content Writer to join our team. The Content Writer will be responsible for creating high-quality content for various mediums, including website, social media, and email.",
        qualification:
            "Bachelor's degree in English, Journalism, Marketing, or related field, minimum 2 years of experience in content writing or related field, excellent written and verbal communication skills, ability to work under tight deadlines.",
        rating: 4,
        type: "Full-time",
        placement: "Remote",
        duration: "Permanent",
        category: "Writing",
        graduation: "Bachelor's degree",
        experience: "2 years",
        baseLocation: "On-site",
        company: Company.company5,
        deadline: "August 31, 2022"),
    // Data 2
    Job(
        title: "Graphic Designer",
        salary: "IDR 8.000.000 - 10.000.000",
        description:
            "We are seeking a talented and creative Graphic Designer to join our team. The Graphic Designer will be responsible for creating visually appealing designs for various mediums, including print, digital, and social media.",
        qualification:
            "Bachelor's degree in Graphic Design, Fine Arts, or related field, minimum 3 years of experience in graphic design or related field, strong proficiency in Adobe Creative Suite, excellent attention to detail.",
        rating: 4,
        type: "Full-time",
        placement: "Bandung, Indonesia",
        duration: "Permanent",
        category: "Design",
        graduation: "Bachelor's degree",
        experience: "3 years",
        baseLocation: "On-site",
        company: Company.company3,
        deadline: "September 30, 2022"),
    // Data 3
    Job(
      title: "Front-End Developer",
      salary: "IDR 12.000.000 - 15.000.000",
      description:
          "We are looking for a skilled Front-End Developer to join our development team. The Front-End Developer will be responsible for building and maintaining web applications with a focus on user experience and design.",
      qualification:
          "Bachelor's degree in Computer Science, Information Technology, or related field, minimum 5 years of experience in front-end development or related field, strong proficiency in HTML, CSS, and JavaScript, experience with modern front-end frameworks such as React or Angular.",
      rating: 4,
      type: "Full-time",
      placement: "Jakarta, Indonesia",
      duration: "Permanent",
      category: "Information Technology",
      graduation: "Bachelor's degree",
      experience: "5 years",
      baseLocation: "On-site",
      company: Company.company2,
      deadline: "October 31, 2022",
    ),
    Job(
      title: "Graphic Designer",
      salary: "IDR 8.000.000 - 10.000.000",
      description:
          "The Graphic Designer will be responsible for creating visual concepts to communicate ideas that inspire, inform, or captivate consumers.",
      qualification:
          "Bachelor's degree in Graphic Design, Fine Arts, or related field, minimum 2 years of experience in graphic design or related field, proficiency in Adobe Creative Suite.",
      rating: 4,
      type: "Full-time",
      placement: "Jakarta, Indonesia",
      duration: "Permanent",
      category: "Design",
      graduation: "Bachelor's degree",
      experience: "2 years",
      baseLocation: "Remote",
      company: Company.company1,
      deadline: "August 31, 2022",
    ),
    // Data 4
    Job(
      title: "Finance Analyst",
      salary: "IDR 12.000.000 - 15.000.000",
      description:
          "The Finance Analyst will be responsible for analyzing financial data and providing financial insights to support business decisions.",
      qualification:
          "Bachelor's degree in Finance, Accounting, or related field, minimum 3 years of experience in finance or related field, strong analytical skills and attention to detail.",
      rating: 4,
      type: "Full-time",
      placement: "Jakarta, Indonesia",
      duration: "Permanent",
      category: "Finance",
      graduation: "Bachelor's degree",
      experience: "3 years",
      baseLocation: "Remote",
      company: Company.company1,
      deadline: "September 15, 2022",
    ),
  ];

  static List<Job> recentJobs = [
    // Data 1
    Job(
        title: "Graphic Designer",
        salary: "IDR 8.000.000 - 10.000.000",
        description:
            "The Graphic Designer will be responsible for creating visual concepts, using computer software or by hand, to communicate ideas that inspire, inform, and captivate consumers.",
        qualification:
            "Bachelor's degree in Graphic Design, Visual Communication or related field, minimum 2 years of experience in graphic design or related field, proficiency in Adobe Creative Suite.",
        rating: 4,
        type: "Full-time",
        placement: "Jakarta, Indonesia",
        duration: "Permanent",
        category: "Design",
        graduation: "Bachelor's degree",
        experience: "2 years",
        baseLocation: "On-site",
        company: Company.company5,
        deadline: "August 15, 2022"),
    // Data 2
    Job(
        title: "Finance Manager",
        salary: "IDR 15.000.000 - 20.000.000",
        description:
            "The Finance Manager will be responsible for overseeing financial operations, developing financial strategies, and analyzing financial data.",
        qualification:
            "- Bachelor's degree in Finance\n- Accounting or related field\n- minimum 5 years of experience in finance or related field\n- strong analytical and leadership skills.",
        rating: 5,
        type: "Full-time",
        placement: "Jakarta, Indonesia",
        duration: "Permanent",
        category: "Finance",
        graduation: "Bachelor's degree",
        experience: "5 years",
        baseLocation: "On-site",
        company: Company.company3,
        deadline: "September 30, 2022"),
    // Data 3
    Job(
        title: "Human Resources Manager",
        salary: "IDR 12.000.000 - 15.000.000",
        description:
            "The Human Resources Manager will be responsible for managing HR operations, developing and implementing HR policies and programs, and providing support to employees.",
        qualification:
            "Bachelor's degree in Human Resources, Business Administration or related field, minimum 5 years of experience in HR or related field, strong communication and interpersonal skills.",
        rating: 4,
        type: "Full-time",
        placement: "Jakarta, Indonesia",
        duration: "Permanent",
        category: "Human Resources",
        graduation: "Bachelor's degree",
        experience: "5 years",
        baseLocation: "On-site",
        company: Company.company2,
        deadline: "October 31, 2022"),
    // Data 4
    Job(
      title: "Content Writer",
      salary: "IDR 6.000.000 - 8.000.000",
      description:
          "The Content Writer will be responsible for creating engaging and informative content for various platforms, including websites, social media, and marketing materials.",
      qualification:
          "Bachelor's degree in English, Communications or related field, minimum 2 years of experience in content writing or related field, excellent writing and editing skills.",
      rating: 4,
      type: "Full-time",
      placement: "Jakarta, Indonesia",
      duration: "Permanent",
      category: "Content",
      graduation: "Bachelor's degree",
      experience: "2 years",
      baseLocation: "On-site",
      company: Company.company3,
      deadline: "November 15, 2022",
    ),
    Job(
      title: 'Digital Marketing Specialist',
      salary: 'IDR 8,000,000 - IDR 10,000,000',
      description:
          'Develop and implement digital marketing strategies and campaigns.',
      qualification: "Bachelor's degree in Marketing or related field.",
      rating: 4.5,
      type: 'Full-time',
      placement: 'Remote',
      duration: 'Permanent',
      category: 'Marketing',
      graduation: "Bachelor's degree",
      experience: '2 years',
      baseLocation: "Remote",
      company: Company.company2,
      deadline: '30 May 2023',
    ),
    Job(
      title: 'Software Developer',
      salary: 'IDR 10,000,000 - IDR 15,000,000',
      description: 'Develop and maintain software applications.',
      qualification: "Bachelor's degree in Computer Science or related field.",
      rating: 4.0,
      type: 'Full-time',
      placement: 'Onsite',
      duration: 'Permanent',
      category: 'Information Technology',
      graduation: "Bachelor's degree",
      experience: '3 years',
      baseLocation: "Remote",
      company: Company.company5,
      deadline: '15 June 2023',
    ),
    Job(
      title: 'Content Writer',
      salary: 'IDR 6,000,000 - IDR 8,000,000',
      description: 'Create and publish engaging content for various platforms.',
      qualification: "Bachelor's degree in Communications or related field.",
      rating: 4.2,
      type: 'Full-time',
      placement: 'Remote',
      duration: 'Permanent',
      category: 'Media',
      graduation: "Bachelor's degree",
      experience: '1 year',
      baseLocation: "Remote",
      company: Company.company1,
      deadline: '25 June 2023',
    ),
    Job(
      title: 'Graphic Designer',
      salary: 'IDR 5,000,000 - IDR 7,000,000',
      description: 'Create visual concepts and designs for various projects.',
      qualification: "Bachelor's degree in Graphic Design or related field.",
      rating: 4.1,
      type: 'Full-time',
      placement: 'Onsite',
      duration: 'Permanent',
      category: 'Creative',
      graduation: "Bachelor's degree",
      experience: '2 years',
      baseLocation: "Remote",
      company: Company.company1,
      deadline: '10 July 2023',
    ),
  ];

  static List<Job> allJobs = [...recentJobs, ...featuredJobs, ...jobList];
}
