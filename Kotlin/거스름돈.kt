import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    var n = readLine().toInt()
    if(n == 1 || n == 3) {
        println(-1)
        return@with
    }
    var coin = 0
    while (n >= 5) {
        coin++
        n -= 5
    }
    coin += if (n == 3 || n == 1) (n + 5) / 2 - 1
        else (n / 2)
    println(coin)

}
