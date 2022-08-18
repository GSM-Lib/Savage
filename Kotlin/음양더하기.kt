class Solution {
    fun solution(absolutes: IntArray, signs: BooleanArray) =
        absolutes.foldIndexed(0) { idx, acc, num -> acc + if (signs[idx]) num else -num }
}