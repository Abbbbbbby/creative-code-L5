require("L5")

function setup()
  size(500, 625)
  background('white')

  -- Set the program title
  windowTitle("project 2")

  ---- images
  -- base
  base = loadImage('assets/p2-base.png')

  -- glass
  glass = loadImage('assets/p2-glass.png')

  -- expressions
  expression1 = loadImage('assets/expressions/expression-1.png')
  expression2 = loadImage('assets/expressions/expression-2.png')
  expression3 = loadImage('assets/expressions/expression-3.png')

  -- array of expressions
  expressions = {expression1, expression2, expression3}

  -- layers
  layer1 = loadImage('assets/layers/parfaitLayers-1.png')
  layer2 = loadImage('assets/layers/parfaitLayers-2.png')
  layer3 = loadImage('assets/layers/parfaitLayers-3.png')
  layer4 = loadImage('assets/layers/parfaitLayers-4.png')
  layer5 = loadImage('assets/layers/parfaitLayers-5.png')
  layer6 = loadImage('assets/layers/parfaitLayers-6.png')
  layer7 = loadImage('assets/layers/parfaitLayers-7.png')
  layer8 = loadImage('assets/layers/parfaitLayers-8.png')
  layer9 = loadImage('assets/layers/parfaitLayers-9.png')
  layer10 = loadImage('assets/layers/parfaitLayers-10.png')
  layer11 = loadImage('assets/layers/parfaitLayers-11.png')
  layer12 = loadImage('assets/layers/parfaitLayers-12.png')
  layer13 = loadImage('assets/layers/parfaitLayers-13.png')
  layer14 = loadImage('assets/layers/parfaitLayers-14.png')
  layer15 = loadImage('assets/layers/parfaitLayers-15.png')

  -- arrays with each layer image; sauceLayers is for layers containing sauce/cream type of layering, and otherLayers includes everything else
  -- the reason for seperating them is for the sake of organization and layering (within the code)
  sauceLayers = {layer1, layer8, layer9, layer10, layer11, layer12}
  otherLayers = {layer2, layer3, layer4, layer5, layer6, layer7, layer13, layer14, layer15}

  -- toppings
  topping1 = loadImage('assets/toppings/parfaitToppings-1.png')
  topping2 = loadImage('assets/toppings/parfaitToppings-2.png')
  topping3 = loadImage('assets/toppings/parfaitToppings-3.png')
  topping4 = loadImage('assets/toppings/parfaitToppings-4.png')
  topping5 = loadImage('assets/toppings/parfaitToppings-5.png')
  topping6 = loadImage('assets/toppings/parfaitToppings-6.png')
  topping7 = loadImage('assets/toppings/parfaitToppings-7.png')
  topping8 = loadImage('assets/toppings/parfaitToppings-8.png')
  topping9 = loadImage('assets/toppings/parfaitToppings-9.png')

  -- arrays with each toppng image; frontToppings contain toppings that will always be in front of the rest of the toppings in otherToppings
  frontToppings = {topping7, topping8}
  otherToppings = {topping1, topping2, topping3, topping4, topping5, topping6}

  -- load the first instance of the base image and the randomized expression
  image(base, 0, 0, 500, 625)
  image(random(expressions), 0, 0, 500, 625)
end

-- function for randomizing the layers
function layerMaker()
  -- draw images on canvas with sauceLayers, each randomized
  image(random(sauceLayers), 0, 250, 500, 625)
  image(random(sauceLayers), 0, 180, 500, 625)
  image(random(sauceLayers), 0, 100, 500, 625)
  image(random(sauceLayers), 0, 10, 500, 625)

  -- draw images on canvas of the other layers, each randomized
  image(random(otherLayers), 0, 225, 500, 625)
  image(random(otherLayers), 0, random(135, 145), 500, 625)
  image(random(otherLayers), 0, random(45, 55), 500, 625)
end

function toppingsMaker()
  -- variables to randomize the start and range used in the following for loop
  start = random(1, 5)
  range = random(start, 6)

  for i = start, range, 1 do
    --image(random(otherToppings), 0, 0, 500, 625)
    image(otherToppings[i], 0, 0, 500, 625)
  end

  -- randomizes which image from frontToppings is drawn
  image(random(frontToppings), 0, 0, 500, 625)

  -- determines if topping9 will be drawn on the canvas using random()
  if random() == 0 then
    image(topping9, 0, 0, 500, 625)
  end
end

-- draw function
function draw()
  -- changing every 300 frames
  if frameCount % 60 == 0 then
    -- clear the canvas
    clear()
    background(255)

    -- call to the function layerMaker to create the randomized parfait layers
    layerMaker()

    -- draws the base image
    image(base, 0, 0, 500, 625)

    -- call to the function toppingsMaker to create randomized toppings
    toppingsMaker()

    -- draws the glass
    image(glass, 0, 0, 500, 625)

    -- randomly selects an expression from the expressions array
    image(random(expressions), 0, 0, 500, 625)
  end
  

end