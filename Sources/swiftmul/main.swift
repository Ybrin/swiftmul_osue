import BigInt
#if os(Linux)
import Glibc
#else
import Darwin
#endif

guard let first = readLine(strippingNewline: true), let second = readLine(strippingNewline: true) else {
    fputs("I/O error", stderr)
    exit(EXIT_FAILURE)
}

while let l = readLine(strippingNewline: true) {
    if !l.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
        fputs("No third line allowed", stderr)
        exit(EXIT_FAILURE)
    }
}

guard let numberOne = BigUInt(first, radix: 16), let numberTwo = BigUInt(second, radix: 16) else {
    fputs("Invalid hex encoded numbers", stderr)
    exit(EXIT_FAILURE)
}

let result = numberOne * numberTwo
print(String(result, radix: 16))
