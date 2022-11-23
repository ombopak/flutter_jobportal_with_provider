import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/job_model.dart';

class JobProvider with ChangeNotifier {
  Future<List<JobModel>> getJob() async {
    try {
      var response =
          await http.get(Uri.parse('https://bwa-jobs.herokuapp.com/jobs'));
      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        List<JobModel> jobs = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((job) {
          jobs.add(JobModel.fromJson(job));
        });
        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<JobModel>> getJobByCategory(String category) async {
    var response = await http.get(
        Uri.parse('https://bwa-jobs.herokuapp.com/jobs?category=$category'));

    try {
  if (response.statusCode == 200) {
    List<JobModel> jobsByCategory = [];
    List parsedJson = jsonDecode(response.body);
  
    parsedJson.forEach((jobs) {
      jobsByCategory.add(JobModel.fromJson(jobs));
    });
  
    return jobsByCategory;
  } else {
    return [];
  }
} catch (e) {
  print(e);
  return [];
}
  }
}
