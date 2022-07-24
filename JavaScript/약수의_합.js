function solution(n) {
  return Array.from(Array(n), (v, i) => i + 1)
    .filter((num) => n % num === 0)
    .reduce((acc, cur) => (acc += cur), 0);
}
