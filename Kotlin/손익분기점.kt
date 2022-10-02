import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val cos : List<String> = readLine().split(" ")
    var result = cos[0].toInt()
    val profit = cos[1].toInt() - cos[2].toInt()
    var count = 0
    if(profit >= 0) print(-1)
    else {
        while(result >= 0) {
            result += profit
            count++
        }
        print(count)
    }
} 