def solution(a, b):
    return sum(a * b for a, b in zip(a,b))