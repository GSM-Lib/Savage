import Foundation
/*
범위 안닿는 곳 나오면 count 쌓아서 w 넘어가거나 다음쪽이 범위가 닿으면 바로 설치
*/
func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int{
    var answer = 0
    var start = 1
    var index = 0
    while start <= n {
        if index < stations.count, start >= stations[index] - w && start <= stations[index] + w {
            start = stations[index] + w
            index += 1
        } else {
            start += w * 2
            answer += 1
        }
        start += 1
    }
    return answer
}