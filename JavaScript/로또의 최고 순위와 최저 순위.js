function solution(lottos, win_nums) {
  let answer = [7, 7];
  lottos.forEach((element) => {
    if (
      win_nums.find((data) => {
        return data === element;
      })
    ) {
      answer[0] -= 1;
      answer[1] -= 1;
    }
    if (element === 0) {
      answer[0] -= 1;
    }
  });
  answer[0] === 7 ? (answer[0] = 6) : (answer[0] = answer[0]);
  answer[1] === 7 ? (answer[1] = 6) : (answer[1] = answer[1]);
  return answer;
}
