import 'dart:ui';

import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:flutter/material.dart';

enum JobStatus {
  delivered,
  seen,
  reviewed,
}

class JobApplication {
  int id;
  String submitTime;
  JobStatus status;
  Job job;

  JobApplication({
    required this.id,
    required this.submitTime,
    required this.status,
    required this.job,
  });

  String get statusString {
    switch (status) {
      case JobStatus.delivered:
        return 'Delivered';
      case JobStatus.seen:
        return 'Seen';
      case JobStatus.reviewed:
        return 'Reviewed';
      default:
        return '';
    }
  }

  Color get statusColor {
    switch (status) {
      case JobStatus.delivered:
        return Colors.orange;
      case JobStatus.seen:
        return Colors.blueAccent;
      case JobStatus.reviewed:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  static List<JobApplication> appliedJobs = [
    JobApplication(
      id: 1,
      submitTime: '2022-05-01 10:30:00',
      status: JobStatus.reviewed,
      job: Job.allJobs[4],
    ),
    JobApplication(
      id: 2,
      submitTime: '2022-05-02 09:00:00',
      status: JobStatus.delivered,
      job: Job.allJobs[1],
    ),
    JobApplication(
      id: 3,
      submitTime: '2022-05-03 15:20:00',
      status: JobStatus.delivered,
      job: Job.allJobs[3],
    ),
    JobApplication(
      id: 4,
      submitTime: '2022-05-04 14:45:00',
      status: JobStatus.delivered,
      job: Job.allJobs[2],
    ),
    JobApplication(
      id: 5,
      submitTime: '2022-05-05 11:10:00',
      status: JobStatus.seen,
      job: Job.allJobs[7],
    ),
    JobApplication(
      id: 6,
      submitTime: '2022-05-06 08:15:00',
      status: JobStatus.delivered,
      job: Job.allJobs[5],
    ),
    JobApplication(
      id: 7,
      submitTime: '2022-05-07 16:30:00',
      status: JobStatus.seen,
      job: Job.allJobs[1],
    ),
    JobApplication(
      id: 8,
      submitTime: '2022-05-08 12:00:00',
      status: JobStatus.delivered,
      job: Job.allJobs[2],
    ),
  ];
}
