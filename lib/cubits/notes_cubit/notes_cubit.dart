import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(NoteFailure(errorMessage: e.toString()));
    }
  }
}
