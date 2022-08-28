func solution(_ phone_number:String) -> String {
    Array(repeating: "*", count: phone_number.count-4).joined(separator: "") + phone_number.suffix(4)
}
