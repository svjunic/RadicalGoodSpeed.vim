/* highlight.js - Neovim highlight sample */
'use strict';

const PI = 3.1415;
let counter = 0;

function sum(a, b = 0) {
  return a + b;
}

const multiply = (a, b) => a * b;

class Greeter {
  constructor(name) {
    this.name = name;
  }
  greet() {
    return `Hello, ${this.name}!`;
  }
}

const regex = /\w+@(\w+\.)?\w+\.\w+/i;

const data = {
  id: 1,
  tags: ['js', 'neovim', 'highlight'],
  nested: {
    enabled: true,
    value: null
  }
};

export default function demo() {
  counter += 1;
  const { id, tags } = data;
  console.log('ID:', id, 'Tags:', tags.join(', '));
  console.log(new Greeter('Neovim').greet());
  return { sum: sum(1, 2), mul: multiply(2, 3), pi: PI, regex: regex.test('test@example.com') };
}
