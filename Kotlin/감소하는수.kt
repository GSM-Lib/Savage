import java.io.BufferedReader
import java.io.InputStreamReader

val decreasingNumbers = mutableListOf<Long>()
fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val targetIndex = readLine().toInt()

    if(targetIndex < 10) {
        print(targetIndex)
    }
    else if (targetIndex >= 1023) {
        print(-1)
    } else {
        for(i in 0..9) {
            decreasingNumbers(i.toLong())
        }
        decreasingNumbers.sort()
        print(decreasingNumbers[targetIndex])
    }
}

fun decreasingNumbers(num: Long) {
    decreasingNumbers.add(num)

    val lastDigit = num % 10

    if(lastDigit <= 0) return

    for(i in lastDigit - 1 downTo 0) {
        decreasingNumbers(num * 10 + i)
    }

}