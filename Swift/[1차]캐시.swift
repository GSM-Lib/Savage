func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var arr: [String] = []
    return cities.map { city in
        let isCache = arr.contains(where: { str in str.lowercased() == city.lowercased()}) && cacheSize != 0
        if isCache {
            arr.removeAll { str in str.lowercased() == city.lowercased() }
        } else if arr.count >= cacheSize && cacheSize != 0 {
            arr.removeFirst()
        }
        if cacheSize != 0 { arr.append(city) }
        return isCache ? 1 : 5
    }.reduce(0, +)
}