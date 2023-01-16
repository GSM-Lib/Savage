class Solution {
    fun solution(answers: IntArray): IntArray {
        var answer = mutableListOf<Int>()
        var max = 0
        val a = intArrayOf(1,2,3,4,5)
        val b = intArrayOf(2,1,2,3,2,4,2,5)
        val c = intArrayOf(3,3,1,1,2,2,4,4,5,5)
        val score = intArrayOf(0,0,0)

    for(i in answers.indices){
       if(a[i%5] == answers[i]){
           score[0] += 1
       }
       if(b[i%8] == answers[i]){
           score[1] += 1
       }
       if(c[i%10] == answers[i]){
           score[2] += 1
       }
   }
    for(i in 0..2){
        if(max <= score[i]){
            max = score[i]
        }
    }
    for(i in 0..2){
        if(max <= score[i]){
            answer.add(i+1)
        }
    }
    return answer.sorted().toIntArray()
    }
}