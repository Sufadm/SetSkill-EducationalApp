import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';

ValueNotifier<List<BlogModel>> bloglistNotifier = ValueNotifier([]);
Future<void> addblogs(BlogModel value) async {
  final blogsDB = await Hive.openBox<BlogModel>('blogs');
  final blogid = await blogsDB.add(value);
  value.id = blogid;
  bloglistNotifier.notifyListeners();
  bloglistNotifier.value.add(value);
}

Future<void> getallblogs() async {
  var appDocumentDir = await getApplicationDocumentsDirectory();
  final blogsDB = await Hive.openBox<BlogModel>('blogs');
  bloglistNotifier.value.clear();
  bloglistNotifier.value.addAll(blogsDB.values);
  bloglistNotifier.notifyListeners();
}

Future<void> deleteblogs(int id) async {
  final blogDB = await Hive.openBox<BlogModel>('blogs');
  await blogDB.deleteAt(id);
  getallblogs();
}

Future<void> editblogsBottom(int id, BlogModel value) async {
  final blogDB = await Hive.openBox<BlogModel>('blogs');
  blogDB.putAt(id, value);
  getallblogs();
}
