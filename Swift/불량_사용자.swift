import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    let list = banned_id
        .map { bannedUserList(user_id, banned: $0) }
    var stack: [(index: Int, idList: [String])] = []
    var res = Set<[String]>()
    for i in list[0] {
        stack.append((0, [i]))
    }
    while stack.count > 0 {
        let current = stack.removeLast()
        if current.index == banned_id.count - 1 {
            res.insert(current.idList.sorted())
            continue
        }

        let newIndex = current.index + 1
        for id in list[newIndex] {
            var idList = current.idList
            if idList.contains(id) { continue }
            idList.append(id)
            stack.append((newIndex, idList))
        }
    }
    return res.count
}

func bannedUserList(_ names: [String], banned: String) -> [String] {
    var res: [String] = []
    let banArr = banned.map { String($0) }
    for i in names.indices {
        let nameArr = names[i].map { String($0) }
        guard banArr.count == nameArr.count else { continue }
        var isBanned = true
        for i in zip(nameArr, banArr) {
            if i.1 == "*" { continue }
            if i.0 != i.1 {
                isBanned = false
                break
            }
        }
        if isBanned { res.append(names[i]) }
    }
    return res
}