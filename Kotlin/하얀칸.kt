import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    var count = 0
    for (y in 0 until 8) {
        val line = readLine().toList()
        for(x in y % 2 until 8 step(2)) {
            if(line[x] == 'F') count++
        }
    }
    print(count)
}