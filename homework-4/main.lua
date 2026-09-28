require("L5")

function setup()
  size(500, 400)
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

  -- back wing
  push()
  fill(255, 255, 255, 175)
  translate(200, 80)
  rotate(30)
  ellipse(0, 0, 100, 125)
  pop()

  -- back legs
  push()
  stroke('black')
  strokeWeight(4)
  line(140, 300, 130, 320) -- front
  line(260, 300, 270, 320) -- back
  pop()

  -- trail
  push()
  stroke('black')
  line(390, 200, 405, 200)
  line(420, 200, 435, 200)
  line(450, 200, 465, 200)
  pop()

  -- stinger
  fill('black')
  triangle(300, 150, 300, 250, 380, 200)

  -- body
  fill(255, 222, 105)
  ellipse(200, 200, 300, 220)

  -- front legs
  push()
  stroke('black')
  strokeWeight(4)
  line(150, 300, 140, 320) -- front
  line(250, 300, 260, 320) -- back
  pop()

  -- stripe
  push()
  stroke('black')
  strokeWeight(30)
  line(200, 90, 200, 310) -- first stripe
  pop()

  fill('black')
  quad(275, 105, 305, 120, 305, 280, 275, 295) -- second stripe

  -- front wing
  push()
  fill(255, 255, 255, 150)
  translate(230, 80)
  rotate(45)
  ellipse(0, 0, 100, 125)
  pop()

  -- face
  fill(0, 0, 0)
  circle(95, 180, 7) -- left
  circle(110, 180, 7) -- right
  
  noFill()
  stroke('black')
  arc(103, 190, 19, 12, 0, 180, OPEN)
end