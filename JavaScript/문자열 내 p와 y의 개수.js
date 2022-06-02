function solution(s) {
  return s.match(/p/gi).length === s.match(/y/gi).length;
}