func countFrom(from: Int, to: Int) {
    print(from)
    
    if (from < to) {
        countFrom(from + 1, to: to)
    }
}

countFrom(1, to: 5)
