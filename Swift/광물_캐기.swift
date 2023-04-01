import Foundation

/*
 다야 3
 철 2
 돌 1
 
 5개 묶어서 가중치
 가중치 낮은거에 돌
 가중치 높은거에 다야?
 */

func solution(_ picks: [Int], _ minerals: [String]) -> Int {
    var dia = picks[0]
    var iron = picks[1]
    var stone = picks[2]
    var res = 0
    let minerals = minerals[0..<min(picks.reduce(0, +) * 5, minerals.count)]

    let slicedCount = minerals.count / 5
    var weightist = [Int: Int]()
    for i in 0 ... slicedCount {
        let prefixMineral = minerals[i * 5 ..< min((i * 5) + 5, minerals.count)]
        let weight = prefixMineral.reduce(into: 0) { partialResult, mineral in
            partialResult += pickaxeAndMineralToRes(pickaxe: .stone, mineral: mineral)
        }
        weightist[i] = weight
    }
    let sotred = weightist.sorted { ldict, rdict in
        ldict.value > rdict.value
    }
    for i in sotred {
        let prefixMineral = minerals[i.key * 5 ..< min((i.key * 5) + 5, minerals.count)]
        let pickaxe: Pickaxe
        if dia > 0 {
            pickaxe = .diamond
            dia -= 1
        } else if iron > 0 {
            pickaxe = .iron
            iron -= 1
        } else if stone > 0 {
            pickaxe = .stone
            stone -= 1
        } else {
            break
        }
        let fatigue = prefixMineral.reduce(into: 0) { partialResult, mineral in
            partialResult += pickaxeAndMineralToRes(pickaxe: pickaxe, mineral: mineral)
        }
        res += fatigue
    }
    return res
}

func pickaxeAndMineralToRes(pickaxe: Pickaxe, mineral: String) -> Int {
    switch pickaxe {
    case .diamond: return diaMineral()
    case .iron: return ironFatigue(mineral: mineral)
    case .stone: return stoneFatigue(mineral: mineral)
    }
}

enum Pickaxe {
    case diamond
    case iron
    case stone
}

func diaMineral() -> Int { 1 }
func ironFatigue(mineral: String) -> Int {
    switch mineral {
    case "diamond": return 5
    case "iron": return 1
    default: return 1
    }
}
func stoneFatigue(mineral: String) -> Int {
    switch mineral{
    case "diamond": return 25
    case "iron": return 5
    default: return 1
    }
}



print(solution([1, 3, 2], ["diamond", "diamond", "diamond", "iron", "iron", "diamond", "iron", "stone"]))
print(solution([0, 1, 1], ["diamond", "diamond", "diamond", "diamond", "diamond", "iron", "iron", "iron", "iron", "iron", "diamond"]))
print(solution( [0, 1, 0],  ["stone", "stone", "stone", "stone", "stone"]))
