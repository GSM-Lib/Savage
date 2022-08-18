import Foundation

func solution(_ record:[String]) -> [String] {
    var userDict: [String: String] = [:]
    var res: [(String, String)] = []
    record.map { $0.components(separatedBy: " ") }.forEach { input in
        let command = input[0]
        switch command {
        case "Enter":
            userDict[input[1]] = input[2]
            res.append(("님이 들어왔습니다.", input[1]))
        case "Leave":
            res.append(("님이 나갔습니다.", input[1]))
        case "Change":
            userDict[input[1]] = input[2]
        default:
            fatalError()
        }
    }
    return res.map { method, id in
        "\(userDict[id]!)\(method)"
    }
}
