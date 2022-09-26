def solution(places):
    answer = [1, 1, 1, 1, 1]
    for idx, place in enumerate(places):
        p_index = []
        near = []
        for i, p in enumerate(place):
            p_index += [(i, ii) for ii, s in enumerate(p) if s == 'P']
        for i, l in enumerate(p_index):
            for r in p_index[i + 1:]:
                if abs(l[0] - r[0]) + abs(l[1] - r[1]) <= 2:
                    near += [[l, r]]

        for n in near:
            if n[0][0] == n[1][0]:
                if n[0][1] - n[1][1] == -1:
                    answer[idx] = 0
                    break
                elif n[0][1] - n[1][1] == -2 and place[n[0][0]][n[0][1] + 1] != 'X':
                    answer[idx] = 0
                    break

            if n[0][1] == n[1][1]:
                if n[0][0] - n[1][0] == -1:
                    answer[idx] = 0
                    break
                elif n[0][0] - n[1][0] == -2 and place[n[0][0] + 1][n[0][1]] != 'X':
                    answer[idx] = 0
                    break
            if n[0][1] != n[1][1] and n[0][0] != n[1][0]:
                if n[0][1] > n[1][1] and (place[n[0][0] + 1][n[0][1]] != 'X' or place[n[0][0]][n[0][1] - 1] != 'X'):
                    answer[idx] = 0
                    break
                if n[0][1] < n[1][1] and (place[n[0][0] + 1][n[0][1]] != 'X' or place[n[0][0]][n[0][1] + 1] != 'X'):
                    answer[idx] = 0
                    break
    return answer