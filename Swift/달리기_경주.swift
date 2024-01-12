import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var players = players
    var rankMap = Dictionary(uniqueKeysWithValues: zip(players, players.indices))
    for i in callings {
        let calledPlayer = rankMap[i]!
        let prevPlayer = players[calledPlayer - 1]
        players.swapAt(calledPlayer, calledPlayer - 1)
        rankMap[i]! -= 1
        rankMap[prevPlayer]! += 1
    }
    return players
}