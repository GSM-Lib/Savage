function solution(survey, choices) {
  let scoreBoard = [3, 2, 1, 0, 1, 2, 3];
  let data = {
    R: 0,
    T: 0,
    C: 0,
    F: 0,
    J: 0,
    M: 0,
    A: 0,
    N: 0,
  };
  survey.forEach(([a, b], i) => {
    choices[i] > 3
      ? (data[b] += scoreBoard[choices[i] - 1])
      : (data[a] += scoreBoard[choices[i] - 1]);
  });
  let answer = "";
  answer += data["R"] >= data["T"] ? "R" : "T";
  answer += data["C"] >= data["F"] ? "C" : "F";
  answer += data["J"] >= data["M"] ? "J" : "M";
  answer += data["A"] >= data["N"] ? "A" : "N";
  return answer;
}
console.log(solution(["TR", "RT", "TR"], [7, 1, 3]));
