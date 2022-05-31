import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((a > b ? (b...a) : (a...b)).reduce(0, +))
}