import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService{
  //get
    final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');
  //CREATE: agregar cv
      Future<void> addNote(String note){
        return notes.add({
          "note":note,
          "timestamp": Timestamp.now()
        });
      }
  //READ: tomar cv de la base de datos
      Stream<QuerySnapshot> getNotesStream(){
        final noteStream = notes.orderBy('timestamp', descending: true).snapshots();
        return noteStream;
      }
  //UPDATE: actualizar cv
      Future<void> updateNote(String docID, String newNote){
        return notes.doc(docID).update({
          "note": newNote,
          "timestamp": Timestamp.now(),

        });
      }  
  //DELETE: borrar cv
        Future<void> deleteNote(String docID){
          return notes.doc(docID).delete();
      }
} 