def solution(arr):
    return [i for i,prev in zip(arr, [-1] + arr) if i != prev]