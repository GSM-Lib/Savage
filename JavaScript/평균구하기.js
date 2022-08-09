function solution(arr) {
  return arr.reduce((old, newData) => (old += newData), 0) / arr.length;
}
