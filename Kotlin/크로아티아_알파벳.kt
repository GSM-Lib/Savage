import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = arrayOf("c=", "c-","dz=","d-","lj","nj","s=","z=")
    var str = readLine()
    arr.forEach { str = str.replace(it, ".") }
    print(str.length)
}