import Foundation
import Cocoa

public class ExtendedCanvas : Canvas {
	public func render(systems : [LindenmayerSystem]) {
		var words = [String]()
		var lengths = [Int]()
		for system in systems {
			words.append(system.calculateWord())
			lengths.append(system.calculateLength())
		}
	}
}
