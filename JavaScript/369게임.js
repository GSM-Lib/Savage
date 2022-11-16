function solution(order) {
  return order.toString().split("").filter(result =>    result == "3" || result == "6" || result == "9").length;
}