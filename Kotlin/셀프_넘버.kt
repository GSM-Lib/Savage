import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = (1..10_000).toList()
    val removeArray = mutableListOf<Int>()
    repeat(arr.size){
        var temp = it + 1
        var num = it + 1

        while (temp > 0) {
            num += temp % 10
            temp /= 10
        }
        if(num <= 10000) {
            removeArray.add(num)
        }
    }
    removeArray.distinctBy { it }
    val selfNumberArray = arr.filterNot { removeArray.contains(it) }
    selfNumberArray.forEach {
        println(it)
    }
}