require("L5")

function setup()
  size(600, 750)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("homework 5 cityscape")

  describe('draws a cityscape')
end

function draw()
  -- stroke
  noStroke()

  -- background
  background(104, 208, 252)

  -- coordinates
  -- text("x: "..mouseX.." y: "..mouseY, 100, 100)
  
  -- chiikawa
  fill(230, 218, 218)
  ellipse(width/2, height/1.875, height/3, height/3)

  fill(250, 245, 245)
  ellipse(width/2.4 - 25, height/6 + 55, height/15, height/15)
  ellipse(width/1.6, height/6 + 55, height/15, height/15)
  ellipse(width/2, height/2.5 - 15, width/2, height/3)

  -- face
  -- left eye
  fill(41, 32, 31)
  ellipse(width/3 + 50, height/2.5 - 20, width/20, width/20)
  fill('white')
  ellipse(width/3 + 50, height/3 + 25, width/30 - 2, width/60)
  ellipse(width/3 + 50, height/3 + 37, width/50, width/100)

  -- right eye
  fill(41, 32, 31)
  ellipse(width/2 + 50, height/2.5 - 20, width/20, width/20)
  fill('white')
  ellipse(width/2 + 50, height/3 + 25, width/30 - 2, width/60)
  ellipse(width/2 + 50, height/3 + 37, width/50, width/100)

  -- mouth
  push()
  fill('black')
  translate(width/2 - 10, height/2.5 + 15)
  rotate(90)
  textSize(20)
  text('3', 0, 0)
  pop()

  -- building left
  fill(87, 87, 87)
  rect(width/10, height/2, width/4, height/2)

  push()
  fill(69, 69, 69)
  quad(width/10, height/2,
      width/5 + 15, height/2 + 25,
      width/3 + 10, height/2,
      width/5 + 15, height/2 - 25)
  pop()

  -- building right
  fill(87, 87, 87)
  rect(width/1.5 - 10, height/2, width/4, height/2)

  push()
  fill(69, 69, 69)
  quad(width/1.5 - 10, height/2,
      width/1.2 - 35, height/2 + 25,
      width/1.2 + 40, height/2,
      width/1.2 - 35, height/2 - 25)
  pop()

  -- chiikawa left hand
  push()
  fill(252, 250, 250)
  translate(width/3.75 + 5, height/2 - 20)
  rotate(20)
  ellipse(0, 0, width/10 - 10, height/18.75)
  pop()

  -- chiikawa right hand
  push()
  fill(252, 250, 250)
  translate(width - 165, height/2 - 20)
  rotate(-20)
  ellipse(0, 0, width/10 - 10, height/18.75)
  pop()

  -- building center
  fill(125, 125, 125)
  rect(width/3, height/1.875 + 25, width/3, height/2.5 + 25)

  push()
  fill(110, 110, 110)
  quad(width/3, height/1.875 + 25,
      width/2, height/1.875 + 55,
      width - 200, height/1.875 + 25,
      width/2, height/1.875 - 5)
  pop()

end
