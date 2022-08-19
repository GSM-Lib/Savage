def solution(sizes):
    data = list(map(lambda x: x if x[0] > x[1] else [x[1],x[0]],sizes))
    return max(data, key=lambda x:x[0])[0] * max(data, key=lambda x:x[1])[1]


solution = lambda sizes: max(sum(sizes, [])) * max(min(size) for size in sizes)