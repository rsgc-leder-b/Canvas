import Foundation
import Cocoa

public class LindenmayerSystem {
    // MARK: Properties
    var axiom = "F++F++F"
    var rule = "F-F++F-F"
    var angle : Degrees = 60
    var distance = 300
    var iterations = 2
    var reduction = 3
    var direction = 0
    var word = ""
    var currentDistance = 0
    
    // MARK: Initializers
    public init (axiom : String, rule : String, angle : Degrees, distance : Int, iterations : Int, reduction : Int) {
        self.axiom = axiom
        self.rule = rule
        self.angle = angle
        self.distance = distance
        self.iterations = iterations
        self.reduction = reduction
        word = axiom
        currentDistance = distance
    }
    
    // MARK: Behavious
    public func calculateWord() -> String {
        var tempAxiom : String = axiom
        if iterations > 0 {
            for _ in 1...iterations {
                var newAxiom = ""
                for char in tempAxiom.characters {
                    newAxiom += char == "F" ? rule : String(char)
                }
                tempAxiom = newAxiom
            }
        }
        return tempAxiom
    }
    public func calculateLength() -> Int {
        var reductionFactor = 1
        if iterations > 0 {
            for _ in 1...iterations {
                reductionFactor *= reduction
            }
        }
        return Int(Double(distance) / Double(reductionFactor))
    }
}
