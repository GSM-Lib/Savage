class Solution {
    fun solution(lottos: IntArray, win_nums: IntArray): IntArray {
                val answer : IntArray = intArrayOf(7 - (lottos.filter { win_nums.contains(it) || it == 0 }.size), 7 - (lottos.filter {win_nums.contains(it)}.size)).map { if (it > 6) 6 else it }.toIntArray()
        return answer
    }
}