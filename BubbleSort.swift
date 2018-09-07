extension Array where Element : Comparable {

    mutating func bubbleSort(by areInIncreasingOrder: @escaping (Element, Element) -> Bool) {
        if self.count <= 1 { return }
        var isOrdered: Bool = true
        repeat {
            isOrdered = true
            for i in 0..<self.count-1 {
                if areInIncreasingOrder(self[i+1], self[i]) {
                    swapAt(i, i+1)
                    isOrdered = false
                }
            }
        } while !isOrdered
    }

}
