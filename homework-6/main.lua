require("L5")

posX = -30

function setup()
  size(500, 500)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("homework 6 bee")
end

function draw()
  -- stroke
  noStroke()

  -- background
  background(104, 208, 252)
  fill('white')

  -- animation
  ellipse(posX, 250, 30, 30)

  posX = posX + 1

  if posX > width+30 then
    posX = -30
  end
  
end
