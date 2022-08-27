func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var max1 = queue1.reduce(0, +)
    var max2 = queue2.reduce(0, +)
    if (max1 + max2) % 2 != 0 { return -1 }
    var q1 = queue1
    var q2 = queue2
    var res = 0
    var left = 0
    var right = 0
    while res < queue1.count * 3 {
        if max1 > max2 {
            let a = q1[left]
            q2.append(a)
            max1 -= a
            max2 += a
            left += 1
        } else if max1 < max2 {
            let a = q2[right]
            q1.append(a)
            max1 += a
            max2 -= a
            right += 1
        } else {
            return res
        }
        res += 1
    }
    return -1
}