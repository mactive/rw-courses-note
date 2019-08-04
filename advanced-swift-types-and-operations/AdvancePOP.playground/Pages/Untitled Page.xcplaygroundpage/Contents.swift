import Foundation

var str = "Hello, playground"

protocol Distribution {
    func sample() -> Double
    func sample(count: Int) -> [Double]
}

extension Distribution {
    func sample(count: Int) -> [Double] {
        return (1...count).map { _ in sample() }
    }
}

struct UniformDistribution: Distribution {
    var range: ClosedRange<Int>
    
    init(range: ClosedRange<Int>) {
        self.range = range
    }
    
    func sample() -> Double {
        return Double(Int.random(in: range))
    }
}

var d10 = UniformDistribution(range: 1...30)
d10.sample(count: 10)
