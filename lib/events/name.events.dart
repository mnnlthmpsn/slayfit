abstract class GlobalNameEvents {}

class SetGlobalName extends GlobalNameEvents {
  final String name;

  SetGlobalName({ required this.name });
}
