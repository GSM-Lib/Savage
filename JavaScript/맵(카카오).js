  function solution(n, arr1, arr2) {
      let answer = [];
      let result = "";
      let rrrr = [];
      for (let a = 0; a < n; a++) {
        arr1[a] = arr1[a].toString(2).padStart(n, "0");
        arr2[a] = arr2[a].toString(2).padStart(n, "0");
        for (let b = 0; b < n; b++) {
         arr1[a][b] == 0 && arr2[a][b] == 0 ? answer[a] += " " : answer[a] += "#";
      }
      result = answer[a].replace("undefined", "");

      rrrr[a] = result;
    }

    return rrrr;
  }
