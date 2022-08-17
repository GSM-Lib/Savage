fun solution(absolutes: IntArray, signs: BooleanArray): Int = 
    absolutes.foldIndexed(0){ index, it, num -> it + if(signs[index]) num else -num }

