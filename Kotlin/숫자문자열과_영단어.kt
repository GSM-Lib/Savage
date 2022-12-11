fun solution(s: String): Int {
        val numSet = arrayOf("zero","one","two","three","four","five","six","seven","eight","nine")
        var str:String = s
        for((i, n) in numSet.withIndex()){
            str = str.replace(n,i.toString())
        }
        return str.toInt()
    }