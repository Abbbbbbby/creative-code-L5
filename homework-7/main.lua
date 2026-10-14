require("L5")

function setup()
  size(800, 600)
  background('white')

  -- initializing stuffs
  noStroke()
  angleMode(DEGREES)
  rectMode(CENTER)

  -- Set the program title
  windowTitle("homework 7")

  -- line to separate the loops
  push()
  stroke('black')
  line(width/2, 0, width/2, height)
  pop()

  -- circle loop
  for i = 1, 7, 1 do
    -- code to alternate y position of circles
    yPosition = 350
    if i % 2 == 0 then
      yPosition = 250
    end

    -- randomized circle fill
    fill(100, random(255), 200)
    -- draw circle
    circle(50*i, yPosition, random(20, 50))
  end

  -- rect loop
  for i = 1,8, 1 do
    push()
    translate(600,300)
    rotate(i*45)
    if i % 2 == 0 then
      noStroke()
      fill(255, 72, 176)
    else
      strokeWeight(3)
      stroke(0, 120, 191)
      fill('white')
    end
    rect(0,100,50,75)
    pop()
  end

end

function draw()
  -- leave empty
end
