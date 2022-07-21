function solution(arr) {
  return arr.reduce((newData, old) => (newData += old / arr.length), 0);
}
