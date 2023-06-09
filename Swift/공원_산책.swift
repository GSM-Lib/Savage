import Foundation

/*
 W - 0보다 같거나 크게
 N - 0보다 같거나 크게
 E + 배열 col보다 작게
 S + 배열 row보다 작게
 */
func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let secondPark = park.map { $0.map { String($0) } }
    var current = (x: 0, y: 0)
    findCurrentPosition(current: &current, park: secondPark)
    routes.forEach { input in
        print(current)
        let inputSplit = input.split(separator: " ")
        let direction = inputSplit[0]
        let step: Int = Int(inputSplit[1])!
        print(direction, step)
        switch direction {
        case "E":
            guard
                current.x + step < secondPark[current.y].count
            else { return }
            var flag = false
            for i in current.x ... current.x + step {
                if secondPark[current.y][i] == "X" {
                    flag = true
                    break
                }
            }
            if flag { return }
            current = (current.x + step, current.y)

        case "S":
            guard
                current.y + step < secondPark.count
            else { return }
            var flag = false
            for i in current.y ... current.y + step {
                if secondPark[i][current.x] == "X" {
                    flag = true
                    break
                }
            }
            if flag { return }
            current = (current.x, current.y + step)

        case "W":
            guard
                current.x - step >= 0
            else { return }
            var flag = false
            for i in stride(from: current.x, through: current.x - step, by: -1) {
                if secondPark[current.y][i] == "X" {
                    flag = true
                    break
                }
            }
            if flag { return }
            print(current)
            current = (current.x - step, current.y)

        case "N":
            guard
                current.y - step >= 0
            else { return }
            var flag = false
            for i in stride(from: current.y, through: current.y - step, by: -1) {
                if secondPark[i][current.x] == "X" {
                    flag = true
                    break
                }
            }
            if flag { return }
            current = (current.x, current.y - step)
            
        default:
            return
        }
    }
    return [current.y, current.x]
}

func findCurrentPosition(current: inout (x: Int, y: Int), park: [[String]]) {
    for i in park.indices {
        for k in park[i].indices {
            guard park[i][k] != "S" else {
                current = (k, i)
                return
            }
        }
    }
}