function solution(k, m, score) {
  let answer = 0;
  score.sort((a, b) => {
    return b - a;
  });
  let idx = m - 1;
  for (let i = 0; i < Math.floor(score.length / m); i++) {
    answer += score[idx] * m;
    idx += m;
  }
  return answer;
}