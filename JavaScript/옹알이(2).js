function solution(babbling) {
  let count = 0;
  let dup = ["ayaaya", "yeye", "woowoo", "mama"];

  while (babbling.length) {
    let result = babbling.pop();
    if (dup.some((v) => result.includes(v))) continue;
    result = result
      .replaceAll("aya", "1")
      .replaceAll("ye", "2")
      .replaceAll("woo", "3")
      .replaceAll("ma", "4");
    result = result.replace(/[1234]/g, "");
    if (result.length === 0) count++;
  }

  return count;
}
