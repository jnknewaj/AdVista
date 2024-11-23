String getCurrentFunctionName(StackTrace stackTrace) {
  var stack = stackTrace.toString();
  var lines = stack.split('\n');

  if (lines.length > 1) {
    var currentLine = lines[1]; // The second line contains the current function
    var functionName = currentLine.split(' ').last; // Extract the function name
    return functionName;
  }
  return 'Unknown';
}
