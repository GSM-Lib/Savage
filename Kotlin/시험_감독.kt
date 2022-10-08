import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val numberOfTestRoom = readLine().toInt()
    val numberOfPeopleInTheTestRoom = readLine().split(" ").map { it.toInt() }
    val (main, sub) = readLine().split(" ").map { it.toInt() }
    var people = 0L
    for(it in 0 until  numberOfTestRoom) {
        if (numberOfPeopleInTheTestRoom[it] == 0) continue
        val remainderPeople =
            if(numberOfPeopleInTheTestRoom[it] - main < 0) 0
            else numberOfPeopleInTheTestRoom[it] - main
        people += 1 + (remainderPeople / sub) + if (remainderPeople % sub != 0) 1 else 0
    }
    print(people)
}