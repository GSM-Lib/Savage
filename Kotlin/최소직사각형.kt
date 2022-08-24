fun solution(sizes: Array<IntArray>): Int {
        var maxW = 0; var maxH = 0;
        sizes.forEach {i ->
            if (i[0] < i[1]) i[0] = i[0] xor i[1] xor i[0].also { i[1] = it }
            maxW = if(i[0] > maxW) i[0] else maxW
            maxH = if(i[1] > maxH) i[1] else maxH
        }
        return maxW * maxH
    }