fun solution(arr: IntArray, divisor: Int): IntArray {
    val answer: IntArray = arr.filter { it % divisor == 0 }.sorted().toIntArray()
    return if (answer.isEmpty()) intArrayOf(-1) else answer
}