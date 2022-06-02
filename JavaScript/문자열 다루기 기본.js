function solution(s) {
  const checkEng = /[a-zA-Z]/;
  if (s.length === 4 || s.length === 6) {
    return !checkEng.test(s);
  }
  return false;
}
