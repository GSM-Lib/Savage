import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = mutableListOf<Int>()
    val (firstNumber, secondNumber) = readLine().split(" ").map { it.toInt() }
    var count = 1
    arr.add(firstNumber * firstNumber % secondNumber)
    do {
        arr.add(arr[count - 1] * firstNumber % secondNumber)
        val sliceArr = arr.filter { it == arr[count] }
        if(sliceArr.size >= 2) {
            println(arr.size - 1)
            break
        }
        else count++
    } while (true)
}