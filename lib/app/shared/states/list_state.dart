abstract class ListState {}

class StartState implements ListState {
  const StartState();
}

class LoadingState implements ListState {
  const LoadingState();
}

class EmptyState implements ListState {
  const EmptyState();
}

class ErrorState implements ListState {
  final String message;
  const ErrorState(this.message);
}

class SuccessState implements ListState {
  const SuccessState();
}
