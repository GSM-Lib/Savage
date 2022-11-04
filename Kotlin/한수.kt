import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    var count = 0
    repeat(readLine().toInt()) {
        val num = it + 1
        if(num in (1..99)) count++
        else {
            val firstNum = num / 100
            if(firstNum - (num - firstNum * 100) / 10 == (num - firstNum * 100) / 10 - num % 10) count++
        }
    }
    print(count)
}