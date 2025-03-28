import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObservers implements BlocObserver {
    @override
    void onChange(BlocBase bloc, Change change) {
        debugPrint('changed: $change');
    }

    @override
    void onClose(BlocBase bloc) {
        // TODO: implement onClose
        debugPrint('close: $bloc');

    }

    @override
    void onCreate(BlocBase bloc) {
        // TODO: implement onCreate
        debugPrint('create: $bloc');

    }

    @override
    void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
        // TODO: implement onError
    }

    @override
    void onEvent(Bloc bloc, Object? event) {
        // TODO: implement onEvent
    }

    @override
    void onTransition(Bloc bloc, Transition transition) {
        // TODO: implement onTransition
    }
    
}