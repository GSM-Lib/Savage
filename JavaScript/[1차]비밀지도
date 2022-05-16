function solution(n, arr1, arr2) {
  let answer = [];
  let result = "";
  let rrrr = [];
  let padding = "000000";
  for (let a = 0; a < n; a++) {
    arr1[a] = arr1[a].toString(2).padStart(n, "0");
    arr2[a] = arr2[a].toString(2).padStart(n, "0");
    for (let b = 0; b < n; b++) {
      if (
        (arr1[a][b] == 1 && arr2[a][b] == 1) ||
        (arr1[a][b] == 1 && arr2[a][b] == 0) ||
        (arr1[a][b] == 0 && arr2[a][b] == 1)
      ) {
        answer[a] += "#";
      } else if (arr1[a][b] == 0 && arr2[a][b] == 0) answer[a] += " ";
    }
    result = answer[a].replace("undefined", "");

    rrrr[a] = result;
  }

  return rrrr;
}
