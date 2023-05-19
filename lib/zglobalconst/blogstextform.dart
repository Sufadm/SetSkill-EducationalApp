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
      maxLines: 15,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Blogs Required';
        } else {
          return null;
        }
      },
      controller: _blog,
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          alignLabelWithHint: true,
          border: OutlineInputBorder(),
          labelText: 'Blogs',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class ImageLinkTextFormWidget extends StatelessWidget {
  const ImageLinkTextFormWidget({
    super.key,
    required TextEditingController imagelink,
  }) : _imagelink = imagelink;

  final TextEditingController _imagelink;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _imagelink,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' ImageLink Required';
        } else {
          return null;
        }
      },
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'ImageLink',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class TopicTextFormWidget extends StatelessWidget {
  const TopicTextFormWidget({
    super.key,
    required TextEditingController topic,
  }) : _topic = topic;

  final TextEditingController _topic;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _topic,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ' Topic Required';
        } else {
          return null;
        }
      },
      style: const TextStyle(
          // color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Topic',
          hintStyle: TextStyle()),
    );
  }
}

class NameTextFormWidget extends StatelessWidget {
  const NameTextFormWidget({
    super.key,
    required TextEditingController name,
  }) : _name = name;

  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Name required';
        } else {
          return null;
        }
      },
      controller: _name,
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
          hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
    );
  }
}

class LogoLinkTextFormWidget extends StatelessWidget {
  const LogoLinkTextFormWidget({
    super.key,
    required TextEditingController logolink,
  }) : _logolink = logolink;

  final TextEditingController _logolink;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _logolink,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Logolink required';
        } else {
          return null;
        }
      },
      style: const TextStyle(fontStyle: FontStyle.italic),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Logolink',
          hintStyle: TextStyle()),
    );
  }
}
