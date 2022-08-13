function solution(array, commands) {
  return commands.map((data) => {
    return array.slice(data[0] - 1, data[1]).sort((a, b) => a - b)[data[2] - 1];
  });
}