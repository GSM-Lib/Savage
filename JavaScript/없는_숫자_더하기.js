function solution(numbers) {
  return (45 - numbers.reduce((a, b) => { return a + b; }));
}

