function solution(s) {
  const p = /p/i;
  const y = /y/i;
  let answer = true;
  let countP = 0;
  let countY = 0;
  for (let i = 0; i < s.length; i++) {
    if (p.test(s[i])) {
      countP += 1;
    } else if (y.test(s[i])) {
      countY += 1;
    }
  }
  return countP === countY ? (answer = true) : (answer = false);
}
