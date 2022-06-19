func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted().map { $0.map { String($0) } }.sorted(by: {
        $0[n] < $1[n]
    }).map { $0.joined() }
}

// 감탄
/*
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
*/