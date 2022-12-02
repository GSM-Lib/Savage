import java.time.LocalDate
fun solution(a: Int, b: Int): String = LocalDate.of(2016,a,b).getDayOfWeek().toString().substring(0 until 3)