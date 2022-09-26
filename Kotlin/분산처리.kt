import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.StringTokenizer

fun main() = with(BufferedReader(InputStreamReader(System.`in`))){
    repeat(readLine().toInt()) {
        val token = StringTokenizer(readLine())
        val arr = arrayOf(token.nextToken().toInt(), token.nextToken().toInt())
        var result = 1
        for (i in 1..arr[1]) {
            result = if(result * arr[0] < 10) result * arr[0] else result * arr[0] % 10
        }
        println(if(result == 0) 10 else result)
    }
}