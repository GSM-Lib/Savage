import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    repeat(readLine().toInt()) {
        val arr = readLine().toList()
        var sum = 0
        var count = 0
        arr.forEach {
            count = if(it == 'X') 0 else count + 1
            sum+=count
        }
        println(sum)
    }
}