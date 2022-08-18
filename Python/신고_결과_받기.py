def solution(id_list, report, k):
    answer = []
    report = list(set(report))
    num_user = len(id_list)

    reported = dict(zip(id_list, [0] * num_user))

    banned = list()
    for report_i in report:
        reported_user = report_i.split()[1]
        reported[reported_user] += 1

        if reported[reported_user] == k:
            banned.append(reported_user)

    ban_notice = dict(zip(id_list, [0] * num_user))
    for report_i in report:
        if report_i.split()[1] in banned:
            ban_notice[report_i.split()[0]] += 1

    for user in id_list:
        answer.append(ban_notice[user])

    return answer