function solution(s) {
  const p = /p/gi;
  const y = /y/gi;
  return s.match(p).length === s.match(y).length;
}
