require("L5")

function setup()
  size(600, 750)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("homework 4 bee")

  describe('draws a bee')
end

function draw()
  -- stroke
  noStroke()

  -- background
  background(104, 208, 252)

  -- coordinates
  text("x: "..mouseX.." y: "..mouseY, 100, 100)

  -- building
  rect(width/10, height/2, width/4, height/2)

  push()
  fill('black')
  quad(width/10, height/2,
      width/5 + 15, height/2 + 25,
      width/3 + 10, height/2,
      width/5 + 15, height/2 - 25)
  pop()

  rect(70, 335, 25, 25)
  
end
