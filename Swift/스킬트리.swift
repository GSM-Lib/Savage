import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var res = skill_trees.count
    skill_trees.forEach { skills in
        var skills = skills
        var copy = skill
        skills.removeAll { !copy.contains($0) }
        for i in skills {
            if copy.first == i {
                copy.removeFirst()
            } else {
                res -= 1
                break
            }
        }
    }
    return res
}