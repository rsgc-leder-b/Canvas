/*:
 
 # Canvas
 
 The Canvas class provides methods that allow basic shapes to be drawn on a Cartesian plane.
 
 - callout(Experiment):
 
    Uncomment line 27 so that the axes of the plane are automatically drawn.
 
    Where is the origin?
 
    In what direction do values on the *x* and *y* axes increase?
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 500, height: 500)

// View the current state of the canvas
canvas

// Draw the axes
canvas.drawAxes()
canvas.translate(byX: 100, byY: 100)

let snowflake = LindenmayerSystem(axiom: "F++F++F",
                                  rule: "F-F++F-F",
                                  angle: 60,
                                  distance: 300,
                                  iterations: 3 ,
                                  reduction: 3)
let angle = 60
let distance = snowflake.calculateLength()
for char in snowflake.calculateWord().characters {
    switch char {
    case "F":
        canvas.drawLine(fromX: 0, fromY: 0, toX: distance, toY: 0)
        canvas.translate(byX: distance, byY: 0)
        break
    case "+":
        canvas.rotate(by: Degrees(angle))
        break
    case "-":
        canvas.rotate(by: -(Degrees)(angle))
        break
    default:
        break
    }
}
/*:
 
 ## To see output
 
 To see output, ensure that you have enabled the Assistant Editor...
 
 ![assistant-editor](assistant-editor.png "Enable the Assistant Editor")
 
 ... and verify that you have selected the *Timeline* option:
 
 ![timeline-option](timeline-option.png "Show the timeline")
 
 Finally, do not remove the following line of code:

 */
PlaygroundPage.current.liveView = canvas.imageView
