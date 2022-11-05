fun solution2(arr: IntArray, divisor: Int): IntArray {
    arr.sort()
    val answer: IntArray = arr.filter { it % divisor == 0 }.toIntArray()
    return if (answer.isEmpty()) intArrayOf(-1) else answer
}