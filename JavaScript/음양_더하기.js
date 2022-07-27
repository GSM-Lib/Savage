function solution(absolutes, signs) {
  return absolutes
    .map((v, i) => {
      return signs[i] === true ? v : -v;
    })
    .reduce((a, b) => {
      return a + b;
    });
}
