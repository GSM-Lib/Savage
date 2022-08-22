fun solution(record: Array<String>): Array<String> {

    val map = mutableMapOf<String, String>()
    val arr = mutableListOf<Array<String>>()

    record.forEach {
        val i = it.split(" ")
        when (i[0]) {
            "Enter" -> {
                map[i[1]] = i[2]
                arr.add(arrayOf(i[0], i[1]))
            }
            "Leave" -> {
                arr.add(arrayOf(i[0], i[1]))
            }
            "Change" -> {
                map[i[1]] = i[2]
            }
        }
    }
    return arr.map {
        if (it[0] == "Enter") {
            "${map[it[1]]}님이 들어왔습니다."
        } else {
            "${map[it[1]]}님이 나갔습니다."
        }
    }.toTypedArray()
}