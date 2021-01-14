//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawAxes(withScale:true,by:50)
canvas.drawShapesWithBorders=true
//big triangle
canvas.defaultBorderWidth=20

canvas.fillColor=Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 0)

canvas.drawCustomShape(with: [Point(x:50,y:50),Point(x:250,y:350),Point(x:450,y:50)])
//planet
canvas.fillColor=Color.black
canvas.defaultBorderWidth=10
canvas.drawEllipse(at: Point(x: 250, y: 390), width: 70, height: 70)
canvas.fillColor=Color.white
canvas.drawRoundedRectangle(at: Point(x: 195, y: 380), width: 110, height: 10)
//base
canvas.fillColor=Color.black
canvas.drawCustomShape(with:[Point(x:50,y:50),Point(x:82,y:100),Point(x:418,y:100),Point(x:450,y:50)])
//grass1
canvas.defaultBorderWidth=1
canvas.drawCustomShape(with:[Point(x:82,y:100),Point(x:105,y:135),Point(x:125,y:100)])
canvas.drawCustomShape(with:[Point(x:125,y:100),Point(x:137,y:150),Point(x:150,y:100)])
//tree1
canvas.drawCustomShape(with:[Point(x:155,y:125),Point(x:180,y:150),Point(x:205,y:125)])
canvas.drawCustomShape(with:[Point(x:160,y:147),Point(x:180,y:168),Point(x:200,y:147)])
canvas.drawCustomShape(with:[Point(x:165,y:165),Point(x:180,y:183),Point(x:195,y:165)])
canvas.drawRectangle(at:Point(x:175,y:100), width:10, height: 25)
//tree2
canvas.drawCustomShape(with:[Point(x:200,y:135),Point(x:230,y:165),Point(x:260,y:135)])
canvas.drawCustomShape(with:[Point(x:207,y:162),Point(x:230,y:187),Point(x:253,y:162)])
canvas.drawCustomShape(with:[Point(x:214,y:184),Point(x:230,y:204),Point(x:248,y:184)])
canvas.drawRectangle(at:Point(x:224,y:100), width: 12, height: 35)
//grass2
canvas.drawCustomShape(with:[Point(x:260,y:100),Point(x:272,y:130),Point(x:284,y:100)])
canvas.drawCustomShape(with:[Point(x:282,y:100),Point(x:297,y:150),Point(x:312,y:100)])
//tree3
canvas.drawCustomShape(with:[Point(x:300,y:120),Point(x:330,y:145),Point(x:360,y:120)])
canvas.drawCustomShape(with:[Point(x:307,y:142),Point(x:330,y:162),Point(x:353,y:142)])
canvas.drawCustomShape(with:[Point(x:314,y:159),Point(x:330,y:174),Point(x:348,y:159)])
canvas.drawRectangle(at:Point(x:325,y:100), width: 10, height: 20)
//decorations

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
