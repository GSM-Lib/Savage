function solution(arr) {
  let result = 0;
  arr.forEach((element) => {
    result += element;
  });
  return result / arr.length;
}
