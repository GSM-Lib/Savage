def solution(survey, choices):
    result = dict(zip(["RT", "CF", "JM", 'AN'], [0, 0, 0, 0]))
    score = [[''.join(sorted(s)), -c] if s not in result else [s, c] for s, c in zip(survey, list(map(lambda x: x-4, choices)))]
    for s in score:
        result[s[0]] += s[1]
    return ''.join([r[0][0] if r[1] <= 0 else r[0][1] for r in result.items()])