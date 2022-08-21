fun solution(survey: Array<String>, choices: IntArray): String {
    val map = mutableMapOf<Char,Int>()
    var result = ""
    val arr = arrayOf('R', 'T', 'C', 'F', 'J', 'M', 'A', 'N')
    arr.forEach { map[it] = 0 }
    survey.forEachIndexed {index, it -> if(choices[index] - 4 <= 0) map[it.first()] = map[it.first()]!! + 4 - choices[index]  else map[it.last()] = map[it.last()]!! + choices[index] - 4}
    result += if(map.getValue('R') >= map.getValue('T')) "R" else "T"
    result += if(map.getValue('C') >= map.getValue('F')) "C" else "F"
    result += if(map.getValue('J') >= map.getValue('M')) "J" else "M"
    result += if(map.getValue('A') >= map.getValue('N')) "A" else "N"
    println(map)
    return result
}