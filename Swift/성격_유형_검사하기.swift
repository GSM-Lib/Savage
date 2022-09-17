import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict: [Character:Int] = ["R":0,"T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0]
    for i in survey.indices {
        let input = Array(survey[i])
        dict[input[choices[i] < 4 ? 0 : 1]]! += abs(4-choices[i])
    }
    var res = dict["R"]! >= dict["T"]! ? "R" : "T"
    res += dict["C"]! >= dict["F"]! ? "C" : "F"
    res += dict["J"]! >= dict["M"]! ? "J" : "M"
    res += dict["A"]! >= dict["N"]! ? "A" : "N"
    return res
}
