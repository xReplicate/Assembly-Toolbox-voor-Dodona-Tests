from evaluation_utils import EvaluationResult

def evaluate_cycles(expected, actual, arguments):
    return EvaluationResult(int(expected) > int(actual))
