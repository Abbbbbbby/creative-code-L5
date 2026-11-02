require("L5")

function setup()
  size(500, 625)
  background('white')

  -- Set the program title
  windowTitle("project 2")

  ---- images
  -- base
  base = loadImage('grayscale assets/p2-base-grayscale.png')

  -- glass
  glass = loadImage('grayscale assets/p2-glass-grayscale.png')

  -- expressions
  expression1 = loadImage('grayscale assets/expressions/expression-grayscale-1.png')
  expression2 = loadImage('grayscale assets/expressions/expression-grayscale-2.png')
  expression3 = loadImage('grayscale assets/expressions/expression-grayscale-3.png')

  -- array of expressions
  expressions = {expression1, expression2, expression3}

  -- layers
  layer1 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-1.png')
  layer2 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-2.png')
  layer3 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-3.png')
  layer4 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-4.png')
  layer5 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-5.png')
  layer6 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-6.png')
  layer7 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-7.png')
  layer8 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-8.png')
  layer9 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-9.png')
  layer10 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-10.png')
  layer11 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-11.png')
  layer12 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-12.png')
  layer13 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-13.png')
  layer14 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-14.png')
  layer15 = loadImage('grayscale assets/layers/parfaitLayers-grayscale-15.png')

  -- arrays with each layer image; sauceLayers is for layers containing sauce/cream type of layering, and otherLayers includes everything else
  -- the reason for seperating them is for the sake of organization and layering (within the code)
  sauceLayers = {layer1, layer9, layer10, layer11, layer12}
  otherLayers = {layer2, layer3, layer4, layer5, layer6, layer7, layer13, layer14, layer15}

  -- toppings
  topping1 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-1.png')
  topping2 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-2.png')
  topping3 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-3.png')
  topping4 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-4.png')
  topping5 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-5.png')
  topping6 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-6.png')
  topping7 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-7.png')
  topping8 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-8.png')
  topping9 = loadImage('grayscale assets/toppings/parfaitToppings-grayscale-9.png')

  -- arrays with each toppng image; frontToppings contain toppings that will always be in front of the rest of the toppings in otherToppings
  frontToppings = {topping7, topping8}
  otherToppings = {topping1, topping2, topping3, topping4, topping5, topping6}

  -- draw the first instance of each part
  layerMaker()
  image(base, 0, 0, 500, 625)
  toppingsMaker()
  image(glass, 0, 0, 500, 625)
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
  start = random(1, 6)
  range = random(start, 7)

  for i = start, range, 1 do
    image(random(otherToppings), 0, 0, 500, 625)
  end

  -- randomizes which image from frontToppings is drawn
  image(random(frontToppings), 0, 0, 500, 625)

  -- determines if topping9 will be drawn on the canvas using random()
  if random(0, 2) == 0 then
    image(topping9, 0, 0, 500, 625)
  end
end

-- draw function
function draw()
  -- clear and draw everything again after every 120 frames
  if frameCount % 120 == 0 then
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