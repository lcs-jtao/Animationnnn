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
//outline (triangle)
canvas.defaultBorderWidth=30
canvas.fillColor=Color.white
canvas.drawCustomShape(with: [Point(x:50,y:50),Point(x:250,y:350),Point(x:450,y:50)])
canvas.lineColor=Color.white
canvas.drawLine(from:Point(x:185,y:255), to:Point(x:198,y:275), lineWidth:15)
canvas.drawLine(from:Point(x:308,y:265), to:Point(x:320,y:248), lineWidth:15)
//planet
canvas.fillColor=Color.black
canvas.defaultBorderWidth=12
canvas.drawEllipse(at: Point(x: 248, y: 390), width: 70, height: 70)
canvas.fillColor=Color.white
canvas.rotate(by:20)
canvas.drawRoundedRectangle(at: Point(x: 312, y: 275), width: 110, height: 10)
canvas.rotate(by:-20)
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
//dots
canvas.drawEllipse(at:Point(x:160,y:112),width:7,height:7)
canvas.drawEllipse(at:Point(x:148,y:165),width:7,height:7)
canvas.drawEllipse(at:Point(x:200,y:185),width:7,height:7)
canvas.drawEllipse(at:Point(x:252,y:113),width:7,height:7)
canvas.drawEllipse(at:Point(x:262,y:173),width:7,height:7)
canvas.drawEllipse(at:Point(x:253,y:217),width:7,height:7)
canvas.drawEllipse(at:Point(x:193,y:230),width:7,height:7)
canvas.drawEllipse(at:Point(x:300,y:163),width:7,height:7)
canvas.drawEllipse(at:Point(x:300,y:220),width:7,height:7)
canvas.drawEllipse(at:Point(x:233,y:293),width:7,height:7)
canvas.drawEllipse(at:Point(x:383,y:115),width:7,height:7)
//stars
canvas.drawRoundedRectangle(at:Point(x:168,y:200), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:173,y:195), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:203,y:115), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:208,y:110), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:272,y:139), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:277,y:134), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:210,y:210), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:215,y:205), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:280,y:195), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:285,y:190), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:360,y:145), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:365,y:140), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:325,y:188), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:330,y:183), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:263,y:282), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:268,y:277), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:242,y:317), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:247,y:312), width:5, height:15)
//orbit
canvas.lineColor=Color.black
canvas.drawCurve(from:Point(x:203,y:315),to:Point(x:311,y:297), control1:Point(x:103,y:285), control2:Point(x:368,y:240), showControlPoints:false, lineWidth:8)
canvas.drawCurve(from:Point(x:178,y:280),to:Point(x:330,y:262), control1:Point(x:78,y:250), control2:Point(x:383,y:205), showControlPoints:false, lineWidth:8)
//flower1 (out right)
canvas.fillColor=Color.white
canvas.defaultBorderWidth=12
canvas.drawCurve(from:Point(x:375,y:172),to:Point(x:402,y:252),control1:Point(x:375,y:202),control2:Point(x:380,y:225),showControlPoints:false,lineWidth:6)
canvas.translate(to:Point(x:415,y:265))
for c in stride(from:0, through:360, by:72){
    let radius:CGFloat=15
    let angle=CGFloat(c)-100
    let x=radius*cos(angle.asRadians())
    let y=radius*sin(angle.asRadians())
    canvas.drawEllipse(at:Point(x:x,y:y),width:15,height:15)
}
canvas.translate(to:Point(x:-415,y:-265))
canvas.drawEllipse(at:Point(x:415,y:265), width:12, height:12)
canvas.rotate(by:20)
canvas.drawEllipse(at:Point(x:418,y:75), width:7, height:18)
canvas.drawEllipse(at:Point(x:440,y:100), width:7, height:18)
canvas.rotate(by:-90)
canvas.drawEllipse(at:Point(x:-48,y:430), width:7, height:18)
canvas.drawEllipse(at:Point(x:-73,y:447), width:7, height:18)
//plant2 (out right)
canvas.rotate(by:30)
canvas.drawEllipse(at:Point(x:210,y:403), width:30, height:75)
canvas.rotate(by:40)
canvas.drawCurve(from:Point(x:395,y:140), to:Point(x:445,y:203), control1:Point(x:395,y:140), control2:Point(x:445,y:200),showControlPoints:false,lineWidth:6)
canvas.drawLine(from:Point(x:425,y:201), to:Point(x:430,y:185),lineWidth:6)
canvas.drawLine(from:Point(x:410,y:186), to:Point(x:415,y:170),lineWidth:6)
canvas.drawLine(from:Point(x:398,y:168), to:Point(x:400,y:155),lineWidth:6)
canvas.drawLine(from:Point(x:430,y:185), to:Point(x:445,y:186),lineWidth:6)

canvas.rotate(by:-75)
canvas.drawEllipse(at:Point(x:-35,y:450), width:25, height:55)
canvas.rotate(by:75)
canvas.drawCurve(from:Point(x:395,y:140), to:Point(x:455,y:155), control1:Point(x:395,y:140), control2:Point(x:460,y:160),showControlPoints:false,lineWidth:6)
canvas.drawLine(from:Point(x:435,y:165), to:Point(x:430,y:153),lineWidth:6)
canvas.drawLine(from:Point(x:415,y:160), to:Point(x:410,y:148),lineWidth:6)
canvas.drawLine(from:Point(x:430,y:150), to:Point(x:440,y:143),lineWidth:6)
canvas.drawLine(from:Point(x:410,y:145), to:Point(x:420,y:135),lineWidth:6)
//flower3 (out left)
canvas.drawCurve(from:Point(x:103,y:140), to:Point(x:75,y:275), control1:Point(x:103,y:140), control2:Point(x:95,y:255), showControlPoints:false, lineWidth:6)
canvas.translate(to:Point(x:70,y:300))
for c in stride(from:0, through:360, by:72){
    let radius:CGFloat=15
    let angle=CGFloat(c)-35
    let x=radius*cos(angle.asRadians())
    let y=radius*sin(angle.asRadians())
    canvas.drawEllipse(at:Point(x:x,y:y),width:20,height:20)
}
canvas.translate(to:Point(x:-70,y:-300))
canvas.drawEllipse(at:Point(x:70,y:300), width:15, height:15)
canvas.rotate(by:60)
canvas.drawEllipse(at:Point(x:255,y:65),width:7,height:18)
canvas.drawEllipse(at:Point(x:228,y:40),width:7,height:18)
canvas.drawEllipse(at:Point(x:200,y:17),width:7,height:18)
canvas.rotate(by:-115)
canvas.drawEllipse(at:Point(x:-154,y:228),width:7,height:18)
canvas.drawEllipse(at:Point(x:-119,y:214),width:7,height:18)
canvas.drawEllipse(at:Point(x:-87,y:197),width:7,height:18)
//plant4 (out left)
canvas.rotate(by:55)
canvas.rotate(by:60)
canvas.drawEllipse(at:Point(x:165,y:20),width:30,height:75)
canvas.drawCurve(from:Point(x:165,y:-15), to:Point(x:165,y:60), control1:Point(x:167,y:-17), control2:Point(x:167,y:58), showControlPoints:false, lineWidth:6)
canvas.drawLine(from:Point(x:165,y:35),to:Point(x:152,y:45),lineWidth:6)
canvas.drawLine(from:Point(x:163,y:15),to:Point(x:150,y:25),lineWidth:6)
canvas.drawLine(from:Point(x:167,y:34),to:Point(x:177,y:40),lineWidth:6)
canvas.drawLine(from:Point(x:165,y:13),to:Point(x:179,y:22),lineWidth:6)
canvas.drawLine(from:Point(x:163,y:-7),to:Point(x:181,y:4),lineWidth:6)

canvas.rotate(by:40)
canvas.drawEllipse(at:Point(x:110,y:-81),width:25,height:62)
canvas.drawCurve(from:Point(x:110,y:-112), to:Point(x:110,y:-50), control1:Point(x:108,y:-114), control2:Point(x:108,y:-52), showControlPoints:false, lineWidth:6)
canvas.drawLine(from:Point(x:108,y:-75),to:Point(x:97,y:-65),lineWidth:6)
canvas.drawLine(from:Point(x:106,y:-95),to:Point(x:96,y:-85),lineWidth:6)
canvas.drawLine(from:Point(x:110,y:-75),to:Point(x:120,y:-70),lineWidth:6)
canvas.drawLine(from:Point(x:108,y:-96),to:Point(x:122,y:-88),lineWidth:6)

canvas.rotate(by:-100)
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
