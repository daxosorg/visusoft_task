import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseService {
  FirebaseService() {
    Firebase.initializeApp();
  }

  Future<List<String>> getFrames() async {
    List<String> frames = [];
    final ListResult result = await FirebaseStorage.instance.ref('frames').listAll();
    for (var ref in result.items) {
      final String url = await ref.getDownloadURL();
      frames.add(url);
    }
    return frames;
  }
}
