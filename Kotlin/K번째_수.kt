class Solution {
    fun solution(array: IntArray, commands: Array<IntArray>) = commands.map { array.copyOfRange(it[0] - 1, it[1]).sorted()[it[2] - 1] }.toIntArray()
}