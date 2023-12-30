import Foundation

/*
크기만큼 array돌리고
정렬하고 2개 자르고 추가하고
*/
func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var genreDict: [String: Int] = [:]
    var viewDict: [String: [Int]] = [:]
    for i in genres.indices {
        genreDict[genres[i], default: 0] += plays[i]
        viewDict[genres[i], default: []].append(i)
    }
    var result: [Int] = []
    for genre in genreDict.sorted(by: { $0.value > $1.value }) {
        let viewList = viewDict[genre.key, default: []]
        let viewResult = viewList.map { (index: $0, play: plays[$0]) }
            .sorted { $0.play > $1.play }
            .reduce(into: [Int]()) { partialResult, view in
                if partialResult.count >= 2 { return }
                partialResult.append(view.index)
            }
        result.append(contentsOf: viewResult)
    }
    
    return result
}