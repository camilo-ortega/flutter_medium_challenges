import 'package:card_swiper/swiper/utils/enums.dart';

sealed class ControllerEvent {
  const ControllerEvent();
}

class ControllerSwipeEvent extends ControllerEvent {
  const ControllerSwipeEvent(this.direction);

  final CardSwipeDirection direction;
}

class ControllerMoveEvent extends ControllerEvent {
  const ControllerMoveEvent(this.index);

  final int index;
}
