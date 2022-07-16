import Foundation

while let readLine = readLine(), readLine != "." {
    var queue = [String]()
    let input = readLine.filter { ["(", ")", "[", "]"].contains(String($0)) }
    var flag = false
    for str in input.map({ String($0) }) {
        if ["(", "["].contains(str) {
            queue.append(str)
        } else if str == ")" && queue.last ?? "" == "(" {
            queue.removeLast()
        } else if str == "]" && queue.last ?? "" == "[" {
            queue.removeLast()
        } else {
            flag = true
            break
        }
    }
    print(!flag && queue.isEmpty ? "yes" : "no")
}