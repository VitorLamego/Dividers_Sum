void main(List<String> args) {
  int number = convertArgToNumber(args[0]);
  if (number != -1) dividers_sum(number);
}

int convertArgToNumber(String parseNumber) {
  int number;
  try {
    number = int.parse(parseNumber);
  } catch (e) {
    print("Entrada inválida!");
    return -1;
  }
  return number;
}

int breakNumber(int number, int divider) {
  int result = 0;
  if (number % divider != 0)
    number = number - (number % divider);
  else
    number = number - divider;

  while (number > 0) {
    result += number;
    number -= divider;
  }

  return result;
}

int dividers_sum(int number) {
  int result = 0;

  result += breakNumber(number, 3);
  result += breakNumber(number, 5);

  print(result);
  return result;
}
