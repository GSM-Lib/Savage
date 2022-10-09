import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    var sum = 0L
    val (firstNumber, secondNumber) = readLine().split(" ")
    repeat(firstNumber.length) { i ->
        repeat(secondNumber.length) { j ->
            sum += firstNumber.substring(i, i+1).toInt() * secondNumber.substring(j, j+1).toInt()
        }
    }
    print(sum)
}