function solution(arr) {
  return arr.reduce((old, newData) => (old += newData / arr.length), 0);
}
