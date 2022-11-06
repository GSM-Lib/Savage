import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) { println((' ' + (BufferedReader(InputStreamReader(System.`in`)).readLine().trim())).ifBlank { "" }.count { it == ' ' }) }

// with Raul