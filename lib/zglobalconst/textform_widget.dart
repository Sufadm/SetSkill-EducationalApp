import 'package:flutter/material.dart';

class BlogTextFormWidget extends StatelessWidget {
  const BlogTextFormWidget({
    super.key,
    required TextEditingController blog,
  }) : _blog = blog;

  final TextEditingController _blog;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Blog is Required';
        } else {
          return null;
        }
      },
      maxLines: 15,
      controller: _blog,
      style: const TextStyle(
          //  color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Blog',
          alignLabelWithHint: true,
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class YoutubeIdTextFormWidget extends StatelessWidget {
  const YoutubeIdTextFormWidget({
    super.key,
    required TextEditingController youtubevideoid,
  }) : _youtubevideoid = youtubevideoid;

  final TextEditingController _youtubevideoid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Youtube vedio id is Required';
        } else {
          return null;
        }
      },
      controller: _youtubevideoid,
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'youtube vedio id',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class LogoTextFormWidget extends StatelessWidget {
  const LogoTextFormWidget({
    super.key,
    required TextEditingController logolink,
  }) : _logolink = logolink;

  final TextEditingController _logolink;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Logo is Required';
        } else {
          return null;
        }
      },
      controller: _logolink,
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Logo Link',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class CourseNameTextFormWidget extends StatelessWidget {
  const CourseNameTextFormWidget({
    super.key,
    required TextEditingController coursename,
  }) : _coursename = coursename;

  final TextEditingController _coursename;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Coursename is Required';
        } else {
          return null;
        }
      },
      controller: _coursename,
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Course Name',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class SectionTextFormWidget extends StatelessWidget {
  const SectionTextFormWidget({
    super.key,
    required TextEditingController section,
  }) : _section = section;

  final TextEditingController _section;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Section is Required';
        } else {
          return null;
        }
      },
      controller: _section,
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Section Name',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class WhatLeanWidget extends StatelessWidget {
  const WhatLeanWidget({
    super.key,
    required TextEditingController whatyouwilllearn,
  }) : _whatyouwilllearn = whatyouwilllearn;

  final TextEditingController _whatyouwilllearn;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _whatyouwilllearn,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' What you will learn is Required';
        } else {
          return null;
        }
      },
      maxLines: 15,
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          alignLabelWithHint: true,
          border: OutlineInputBorder(),
          labelText: 'What you will learn',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class BeginnerTextFormWidget extends StatelessWidget {
  const BeginnerTextFormWidget({
    super.key,
    required TextEditingController beginner,
  }) : _beginner = beginner;

  final TextEditingController _beginner;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _beginner,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Beginner is Required';
        } else {
          return null;
        }
      },
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Beginner',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class TimeTextFormWidget extends StatelessWidget {
  const TimeTextFormWidget({
    super.key,
    required TextEditingController time,
  }) : _time = time;

  final TextEditingController _time;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Time required';
        } else {
          return null;
        }
      },
      controller: _time,
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Time',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class OverviewTextFormWidget extends StatelessWidget {
  const OverviewTextFormWidget({
    super.key,
    required TextEditingController overviewcoursename,
  }) : _overviewcoursename = overviewcoursename;

  final TextEditingController _overviewcoursename;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _overviewcoursename,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Overview course required';
        } else {
          return null;
        }
      },
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Overview course name',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}
