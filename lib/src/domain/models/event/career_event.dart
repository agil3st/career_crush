import 'package:career_crush/src/domain/models/job/job_location.dart';
import 'package:intl/intl.dart';

class CareerEvent {
  int id;
  String title;
  String description;
  String registrationStartDate;
  String registrationCloseDate;
  String startDate;
  int registeredUserCount;
  int quota;
  String imageURL;
  Location location;

  CareerEvent({
    required this.id,
    required this.title,
    required this.description,
    required this.registrationStartDate,
    required this.registrationCloseDate,
    required this.startDate,
    required this.registeredUserCount,
    required this.quota,
    required this.imageURL,
    required this.location,
  });

  String get dateHumanReadable {
    DateTime date = DateTime.parse(registrationCloseDate);
    return DateFormat('dd MMMM, yyyy', 'id_ID').format(date);
  }

  static List<CareerEvent> events = [
    CareerEvent(
      id: 1,
      title: 'Tech Job Fair',
      description: 'A career event for tech enthusiasts',
      registrationStartDate: '2023-06-01',
      registrationCloseDate: '2023-07-01',
      startDate: '2023-08-01',
      registeredUserCount: 10,
      quota: 500,
      location: Location.bandung,
      imageURL:
          'https://images.pexels.com/photos/2774556/pexels-photo-2774556.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 2,
      title: 'Marketing Career Talk',
      description: 'A talk about the latest trends in marketing',
      registrationStartDate: '2023-06-15',
      registrationCloseDate: '2023-07-15',
      startDate: '2023-08-15',
      registeredUserCount: 10,
      quota: 200,
      location: Location.online,
      imageURL:
          'https://images.pexels.com/photos/3321789/pexels-photo-3321789.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 3,
      title: 'Finance Seminar',
      description: 'A seminar about personal finance management',
      registrationStartDate: '2023-06-10',
      registrationCloseDate: '2023-07-10',
      startDate: '2023-08-10',
      registeredUserCount: 10,
      quota: 100,
      location: Location.bandung,
      imageURL:
          'https://images.pexels.com/photos/9034787/pexels-photo-9034787.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 4,
      title: 'Design Workshop',
      description: 'A workshop about design thinking',
      registrationStartDate: '2023-06-20',
      registrationCloseDate: '2023-07-20',
      startDate: '2023-08-20',
      registeredUserCount: 10,
      quota: 50,
      location: Location.jakarta,
      imageURL:
          'https://images.pexels.com/photos/4623103/pexels-photo-4623103.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 5,
      title: 'Data Science Hackathon',
      description: 'A hackathon for data science enthusiasts',
      registrationStartDate: '2023-06-25',
      registrationCloseDate: '2023-07-25',
      startDate: '2023-08-25',
      registeredUserCount: 10,
      quota: 300,
      location: Location.online,
      imageURL:
          'https://images.pexels.com/photos/50675/banquet-wedding-society-deco-50675.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 6,
      title: 'Startup Pitching Event',
      description: 'An event for startups to pitch their ideas',
      registrationStartDate: '2023-06-05',
      registrationCloseDate: '2023-07-05',
      startDate: '2023-08-05',
      registeredUserCount: 10,
      quota: 150,
      location: Location.jogja,
      imageURL:
          'https://images.pexels.com/photos/416405/pexels-photo-416405.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 7,
      title: 'IT Career Conference',
      description: 'A conference about the latest trends in IT',
      registrationStartDate: '2023-06-12',
      registrationCloseDate: '2023-07-12',
      startDate: '2023-08-12',
      registeredUserCount: 10,
      quota: 400,
      location: Location.jogja,
      imageURL:
          'https://images.pexels.com/photos/7648058/pexels-photo-7648058.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1',
    ),
    CareerEvent(
      id: 8,
      title: "Marketing Job Fair",
      description:
          "Join us in our Marketing Job Fair and meet with top Marketing companies in Indonesia.",
      registrationStartDate: "2023-09-01",
      registrationCloseDate: "2023-09-10",
      startDate: "2023-10-01",
      registeredUserCount: 10,
      quota: 200,
      location: Location.sidoarjo,
      imageURL:
          "https://images.pexels.com/photos/7648476/pexels-photo-7648476.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1",
    ),
    CareerEvent(
      id: 9,
      title: "Engineering Job Fair",
      description:
          "Join us in our Engineering Job Fair and meet with top Engineering companies in Indonesia.",
      registrationStartDate: "2024-01-01",
      registrationCloseDate: "2024-01-10",
      startDate: "2024-02-01",
      registeredUserCount: 10,
      quota: 150,
      location: Location.bandung,
      imageURL:
          "https://images.pexels.com/photos/587741/pexels-photo-587741.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1",
    ),
    CareerEvent(
      id: 10,
      title: "IT Career Fair",
      description:
          "Join us in our IT Career Fair and meet with top IT companies in Indonesia.",
      registrationStartDate: "2023-06-20",
      registrationCloseDate: "2023-06-25",
      startDate: "2023-07-10",
      registeredUserCount: 10,
      quota: 300,
      location: Location.jakarta,
      imageURL:
          "https://images.pexels.com/photos/3023317/pexels-photo-3023317.jpeg?auto=compress&cs=tinysrgb&w=400&h=350&dpr=1",
    ),
  ];
}
