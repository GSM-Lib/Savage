import Foundation

func solution(_ operations: [String]) -> [Int] {
    func append(_ value: Int) {
        array.append(value)
    }

    @discardableResult
    func removeMin() -> Int? {
        if let min = array.min(),
           let minIndex = array.firstIndex(of: min) {
            return array.remove(at: minIndex)
        }
        return nil
    }

    @discardableResult
    func removeMax() -> Int? {
        if let max = array.max(),
           let maxIndex = array.firstIndex(of: max) {
            return array.remove(at: maxIndex)
        }
        return nil
    }

    var array = [Int]()
    for input in operations {
        let newInput = input.components(separatedBy: " ")
        let command = newInput[0]
        let value = Int(newInput[1])!
        switch command {
        case "I": append(value)
        case "D": if value == 1 { removeMax() } else { removeMin() }
        default: break
        }
    }
    return [array.max() ?? 0, array.min() ?? 0]
}
