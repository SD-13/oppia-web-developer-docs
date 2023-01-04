module.exports = {
  "names": [ "my-custom-rule" ],
  "description": "Rule that checks for a custom regex pattern",
  "information": new URL("https://example.com/rules/my-custom-rule"),
  "tags": [ "custom" ],
  "function": function rule(params, onError) {
    // Define the regex pattern to match
    var regex = /^**Note**:\ [A-Z].*/;

    // Iterate over all lines in the input
    params.lines.forEach(function forLine(line, lineNumber) {
      // Check if the line matches the regex pattern
      if (regex.test(line)) {
        // If the line matches, report an error
        onError({
          "lineNumber": lineNumber + 1,
          "detail": "Line contains invalid pattern",
          "context": line.substr(0, 7)
        });
      }
    });
  }
};