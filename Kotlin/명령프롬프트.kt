import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val num = readLine().toInt()
    val firstString = readLine().toMutableList()

    for(i in 1 until num) {
        val string = readLine().toList()
        for(j in firstString.indices) {
            firstString[j] = if(firstString[j] != string[j]) '?' else string[j]
        }
    }
    print(firstString.joinToString(""))
}