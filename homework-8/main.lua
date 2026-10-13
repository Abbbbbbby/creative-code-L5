require("L5")

function setup()
  size(600, 600)
  background('white')

  -- Set the program title
  windowTitle("homework 8")

  -- my silly little lists
  blMangas = {"Oni to Tengoku", "Boku no Omawari-san", "Monotone Blue", "Sleeping Dead", "Chou to Hana no Kankeisei", }
  characters = {"Chiikawa", "Kurimanju", "Shisa", "Shidou Kirisaki", "Kazui Mukuhara", "Kasane Teto", "Kazuichi Souda"}
  foods = {"omurice", "curry", "oyakodon", "egg sandwich", "pizza margherita", "inarizushi"}

  -- intial call of textGenerator
  textGenerator()
end

function textGenerator()
  fill('black')
  textAlign(CENTER)
  textSize(20)

  text("One of my favorite BLs is "..random(blMangas), width/2, height/3)
  text("One of my favorite characters is "..random(characters), width/2, height/2)
  text("One of my favorite foods is "..random(foods), width/2, height/1.5)
end

function mousePressed()
  background('white')
  textGenerator()
end

function draw()

end
