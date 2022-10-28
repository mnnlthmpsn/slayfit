class NameState {
  final String name;

  NameState({ this.name = "" });

  NameState copyWith({ String? name }) {
    return NameState(name: name ?? this.name);
  }
}