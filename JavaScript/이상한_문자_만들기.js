function solution(s) {
  const big = /A-Z/;
  const small = /a-z/;
  let answer = "";
  let Array = s.split(" ");
  Array.forEach((element, index) => {
    for (let i = 0; i < element.length; i++) {
      if (i % 2 == 0) {
        if (!big.test(element[i])) {
          answer += element[i].toUpperCase();
        }
      } else {
        if (!small.test(element[i])) {
          answer += element[i].toLowerCase();
        }
      }
    }
    if (index !== Array.length - 1) {
      answer += " ";
    }
  });
  return answer;
}
