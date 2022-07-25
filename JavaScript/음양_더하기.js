function solution(absolutes, signs) {
  return absolutes
    .map((v, i) => {
      return signs[i] === true ? v : (v = v * -1);
    })
    .reduce((a, b) => {
      return a + b;
    });
}
