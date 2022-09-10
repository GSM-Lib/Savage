function solution(a, b) {
  return a.reduce((r, v, i) => { return r + v * b[i] }, 0);
}
