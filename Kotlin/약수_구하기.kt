import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val num = readLine().split(" ")
    val arr = (1..num[0].toInt()).toList()

    val result = arr.filter { num[0].toInt() % it == 0 }
    print(if(num[1].toInt() > result.size) 0 else result[num[1].toInt() - 1])
}