void main() {
  print('This is a normal message.');
  printWarning('This is a warning.');
  printError('This is an error.');
}

void printWarning(String text) {
  print('\x1B[33m$text\x1B[0m');
}

void printError(String text) {
  print('\x1B[31m$text\x1B[0m');
}


// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m

// Bright Black: \u001b[30;1m
// Bright Red: \u001b[31;1m
// Bright Green: \u001b[32;1m
// Bright Yellow: \u001b[33;1m
// Bright Blue: \u001b[34;1m
// Bright Magenta: \u001b[35;1m
// Bright Cyan: \u001b[36;1m
// Bright White: \u001b[37;1m
// Reset: \u001b[0m

// Background Black: \u001b[40m
// Background Red: \u001b[41m
// Background Green: \u001b[42m
// Background Yellow: \u001b[43m
// Background Blue: \u001b[44m
// Background Magenta: \u001b[45m
// Background Cyan: \u001b[46m
// Background White: \u001b[47m
// With the bright versions being:

// Background Bright Black: \u001b[40;1m
// Background Bright Red: \u001b[41;1m
// Background Bright Green: \u001b[42;1m
// Background Bright Yellow: \u001b[43;1m
// Background Bright Blue: \u001b[44;1m
// Background Bright Magenta: \u001b[45;1m
// Background Bright Cyan: \u001b[46;1m
// Background Bright White: \u001b[47;1m