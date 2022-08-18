def solution(record):
    trace = [(v.split()[0], v.split()[1]) for v in record if v.split()[0] != "Change"]
    ids = list(set([id.split()[1] for id in record]))
    nick = dict(zip(ids, '0' * len(ids)))
    for r in record:
        if r.split()[0] == "Leave":
            continue
        nick.update({r.split()[1]: r.split()[2]})

    return [nick[t[1]] + "님이 들어왔습니다." if t[0] == "Enter" else nick[t[1]] + "님이 나갔습니다." for t in trace]