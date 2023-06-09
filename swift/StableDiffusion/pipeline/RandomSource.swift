import CoreML

@available(iOS 16.2, macOS 13.1, *)
public protocol RandomSource {
    mutating func nextNormal(mean: Double, stdev: Double) -> Double
    
    mutating func normalShapedArray(_ shape: [Int], mean: Double, stdev: Double) -> MLShapedArray<Double>
}
