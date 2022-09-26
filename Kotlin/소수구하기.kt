import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val line = readLine().split(' ')
    val arr = (0 .. line[1].toInt()).toMutableList()
    for(i in 2 until arr.size) {
        if(arr[i] == 0) continue
        for(j in i * 2 until arr.size step(i)) {
            arr[j] = 0
        }
        if(i < line[0].toInt()) continue
        println(i)
    }
}