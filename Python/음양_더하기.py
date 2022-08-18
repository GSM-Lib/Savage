def solution(absolutes, signs):
    return sum([i[0] if signs[i[1]] else -i[0] for i in zip(absolutes, range(len(signs)))])