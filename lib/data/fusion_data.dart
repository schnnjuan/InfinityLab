class FusionRule {
  final List<String> inputs;
  final String output;

  FusionRule({required this.inputs, required this.output});

  factory FusionRule.fromJson(Map<String, dynamic> json) {
    return FusionRule(
      inputs: List<String>.from(json['inputs']),
      output: json['result'],
    );
  }
}