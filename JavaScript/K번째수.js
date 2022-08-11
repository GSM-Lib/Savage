function solution(array, commands) {
  let answer = [];
  commands.forEach((data, index) => {
    answer[index] = array.slice(data[0] - 1, data[1]).sort((a, b) => a - b)[
      data[2] - 1
    ];
  });
  return answer;
}
