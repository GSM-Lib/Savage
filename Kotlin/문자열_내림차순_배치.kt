class Solution {
    fun solution(s: String): String = s.toList().sorted().reversed().joinToString("")
}