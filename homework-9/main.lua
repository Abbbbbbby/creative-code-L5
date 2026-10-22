require("L5")

function setup()
  size(800, 600)
  background('white')
  angleMode(DEGREES)
  rectMode(CENTER)
  noStroke()

  -- Set the program title
  windowTitle("homework 9")

  -- image
  bg = loadImage('assets/bg.jpg')
end

function fishMaker(x, y, r, g, b)
  fill(r, g, b, 200)
  triangle(x + 30, y, x + 70, y + 20, x + 70, y - 20)
  ellipse(x, y, 100, 40)
  fill(0)
  text('>:', x - 40, y + 4)
end

function cloudMaker(x, y)
  fill(255, 200)
  ellipse(x, y, 100, 75)
  ellipse(x + 40, y + 10, 60, 50)
  ellipse(x - 40, y + 10, 60, 50)
  ellipse(x - 20, y + 30, 40, 20)
  ellipse(x + 20, y + 30, 40, 20)
end

function draw()
  image(bg, 0, 0, 800, 600)

  -- fish
  fishMaker(200, 460, 219, 79, 79)
  fishMaker(400, 510, 224, 127, 0)

  -- clouds
  cloudMaker(80, 45)
  cloudMaker(480, 95)

  -- sun
  push()
  stroke(255, 204, 20, 200)
  strokeWeight(5)
  fill(255, 229, 99, 200)
  circle(750, 20, 100)
  pop()
  for i = 0, 7, 1 do
    push()
    
    fill(255, 204, 20, 200)
    translate(750, 20)
    rotate(i*45)
    rect(0, 70, 10, 20)
    pop()
  end

end