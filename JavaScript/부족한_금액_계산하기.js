function solution(price, money, count) {
  let answer = Array.from(Array(count), (v, i) => price * (i + 1)).reduce(
    (a, b) => a + b
  );
  return money - answer > 0 ? 0 : answer - money;
}
