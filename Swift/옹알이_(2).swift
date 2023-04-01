import Foundation

func counting(_ babbling: String) -> Bool {
    let words = ["aya", "ye", "woo", "ma"]
    var result = ""
    var cache = ""
    
    for i in babbling.map(String.init) {
        result += i
        if words.contains(result) && result != cache {
            cache = result
            result = ""
        }
    }
    return result.isEmpty
}

func solution(_ babbling:[String]) -> Int {
    babbling.filter { counting($0) }.count
}