// Using the function keyword declare a function called `greet`
// that returns a String "Hi, Ed!"

function greet() {
  return "Hi, Ed!"
}

console.log(greet())


// Declare a `function` called `greet` that has 1 argument 
// called `name` and returns a String `"Hi, <name>!"`

function greet_argument(name) {
  return `Hi, ${name}!`
}

console.log(greet_argument('Marta'))

// Same as Challenge 2 - this time use an arrow function

const greet_arrow = (name) => {
  return `Hi, ${name}!`
}

console.log(greet_arrow('Carlo'))

// Use class syntax to create a Student class that initializes 
// with a name property and has a method that returns the capitalised name.

class Student {
  constructor(name) {
    this.name = name;
  }

  capitalise() {
    return this.name.charAt(0).toUpperCase() + this.name.slice(1);
  }
}

const student_one = new Student("marta");
console.log(student_one.capitalise());

