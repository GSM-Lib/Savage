import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    var count = 0
    val repeatCount = readLine().toInt()
    repeat(repeatCount) {
        var str = readLine().toString()
        while(str.length > 1) {
            if(str[0] == str[1]) {
                str = str.substring(1)
            } else {
                if(str.substring(1).length != str.replace(str[0].toString(), "").length) {
                    count += 1
                    str = ""
                    break
                }
                str = str.substring(1)
            }
        }
    }
    print(repeatCount - count)
}