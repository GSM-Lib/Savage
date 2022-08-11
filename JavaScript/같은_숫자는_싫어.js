function solution(arr) {
  return arr.filter((data, index) => {
    return data !== arr[index + 1];
  });
}
