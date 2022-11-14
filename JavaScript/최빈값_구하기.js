function solution(array) {
  let setArr = [...new Set(array)]; // 1 2 3 4
  let cnt = [];
  for (let i = 0; i < setArr.length; i++) {
    cnt.push(array.filter((result) => result === setArr[i]).length);
  }
  let maxCnt = Math.max(...cnt);
  return cnt.filter((result) => result === maxCnt).length > 1
    ? -1
    : setArr[cnt.indexOf(maxCnt)];
}