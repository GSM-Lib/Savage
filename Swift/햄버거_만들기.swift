import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var ans = 0
    var stack: [Int] = []
    ingredient.forEach { gredient in
        stack.append(gredient)
        
        if stack.count > 4 {
            let n = stack.count
            if Array(stack[n-4..<n]) == [1, 2, 3, 1] {
                stack = Array(stack[0..<n-4])
                ans += 1
            }
        }
    }
    return ans
}