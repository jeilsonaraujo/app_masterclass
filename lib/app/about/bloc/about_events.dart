abstract class AboutEvent {}

class LoadAboutEvent extends AboutEvent {
  String userName;
  LoadAboutEvent({required this.userName});
}
