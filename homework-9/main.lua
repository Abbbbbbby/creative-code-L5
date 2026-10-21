require("L5")

function setup()
  size(800, 600)
  background('white')

  -- Set the program title
  windowTitle("homework 9")

  -- image
  bg = loadImage('assets/bg.jpg')
end

function fishMaker(x, y)
  noStroke()
  fill(219, 79, 79, 200)
  triangle(x + 30, y, x + 70, y + 20, x + 70, y - 20)
  ellipse(x, y, 100, 50)
  fill(0)
  text(':)', x - 40, y + 4)
end

function draw()
  image(bg, 0, 0, 800, 600)

  -- fish
  fishMaker(100, 500)

end