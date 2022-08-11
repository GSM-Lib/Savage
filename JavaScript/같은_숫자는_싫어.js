function solution(arr) {
  arr = arr.filter((data, index) => {
    return data !== arr[index + 1];
  });
  return arr;
}