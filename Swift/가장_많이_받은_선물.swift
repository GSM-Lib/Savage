import Foundation

func solution(_ friends: [String], _ gifts: [String]) -> Int {
    var giftCounter = friends.reduce(into: [String: Int]()) { partialResult, friend in
        partialResult[friend] = 0
    }
    var giftCounter2: [String: Int] = [:]

    gifts.forEach { gift in
        giftCounter2.updateValue((giftCounter2[gift] ?? 0) + 1, forKey: gift)
        let history = gift.components(separatedBy: " ")
        let from = history[0]
        let to = history[1]

        giftCounter[from]! -= 1
        giftCounter[to]! += 1
    }

    var maxGifts = 0
    friends.forEach { friend in
        var giftCount = 0
        for toFriend in friends where toFriend != friend {
            let fromSend = giftCounter2["\(friend) \(toFriend)"] ?? 0
            let toSend = giftCounter2["\(toFriend) \(friend)"] ?? 0
            if fromSend > toSend {
                giftCount += 1
            } else if fromSend == toSend {
                let fromReceive = giftCounter[friend]!
                let toReceive = giftCounter[toFriend]!
                if toReceive > fromReceive {
                    giftCount += 1
                }
            }
        }
        if maxGifts < giftCount {
            maxGifts = giftCount
        }
    }
    
    return maxGifts
}
