import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var empty = n
    var ans = 0
    while empty >= a {
        var receive = (empty / a) * b
        var remain = empty % a
        empty = receive + remain
        ans += receive
    }
    return ans
}