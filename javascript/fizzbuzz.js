function fizz_buzz(number) {
  for (let i = 1; i <= number; i++) {
    final_string = "";

    if (i % 3 == 0) {
      final_string += "Fizz";
    }
    if (i % 5 == 0) {
      final_string += "Buzz";
    }
    if (final_string == 0) {
      final_string += i
    }

    console.log(final_string);
  }
}

// fizz_buzz(16)

const fizz_buzz_hash = (number) => {
  const check = {
    3: 'Fizz',
    5: 'Buzz',
    7: 'Tazz',
    11: 'Lol'
  }

  for (i = 1; i <= number; i++) {
    final_string = '';
    
    Object.keys(check).forEach((key) => {
      if (i % key == 0) {
        final_string += check[key]
      }
    });

    if (final_string == '') {
      final_string += i
    }
    console.log(final_string)
  }
}

fizz_buzz_hash(33)