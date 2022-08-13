fun solution(id_list: Array<String>, report: Array<String>, k: Int): IntArray {
    val map = mutableMapOf<String, Int>()
    val reportList = mutableMapOf<String, Int>()
    id_list.forEach {
        map[it] = 0
        reportList[it] = 0
    }
    report.distinct().forEach {
        map[it.split(" ")[1]] = map.getValue(it.split(" ")[1]) + 1
    }
    report.distinct().filter{ map.getValue(it.split(" ")[1]) >= k }.forEach{reportList[it.split(" ")[0]] = reportList.getValue(it.split(" ")[0]) + 1}
    return reportList.values.toIntArray()
}