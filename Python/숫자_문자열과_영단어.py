def solution(s):
    strnum = ['zero','one','two','three','four','five','six','seven','eight','nine']
    answer = []
    nan = ''
    try:
        int(s)
        return int(s)
    except:
        for i in s:
            if i in list(map(lambda x: str(x), range(0,10))):
                answer.append(i)

            else:
                nan = nan + i

                if nan in strnum:
                    answer.append(strnum.index(nan))
                    nan = ''
    return int(''.join(map(str, answer)))