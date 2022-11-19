import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val str = readLine().toCharArray().map { replacer(it) }
    print(str.fold(0){acc, i -> acc + i + 1 })
}

fun replacer(c: Char): Int {
    return when (c) {
        'A', 'B', 'C' -> 2
        'D', 'E', 'F' -> 3
        'G', 'H', 'I' -> 4
        'J', 'K', 'L' -> 5
        'M', 'N', 'O' -> 6
        'P', 'Q', 'R', 'S' -> 7
        'T', 'U', 'V' -> 8
        'W', 'X', 'Y', 'Z' -> 9
        else -> 0
    }
}
