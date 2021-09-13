local elapsedTime = 0;
local clicker = 0;
local camion_image;
local camion_x = 20;
local camion_y = 200;

function love.load(arg)
  testLua("")

  camion_image = love.graphics.newImage("camion.png")

end

function love.draw()
  message = "Hello world ! \n"

  message = message .. string.format("%.2f secondes passées \n", elapsedTime)
  message = message .. string.format("%d clics \n", clicker);

  love.graphics.setBackgroundColor(0.5, 0, 0, 0)

  love.graphics.print(message, 10, 20)

  love.graphics.rectangle("line", 5, 15, 170, 50)

  -- camion
  love.graphics.draw(camion_image, camion_x, camion_y);
  love.graphics.print(
    string.format("x= %d, y=%d", camion_x, camion_y),
    camion_x + 6, camion_y - 6
  );
end


function love.update(dt)
  elapsedTime = elapsedTime + dt;
  if (love.keyboard.isDown("left")) then
    camion_x = camion_x - 2;
  elseif (love.keyboard.isDown("right")) then
    camion_x = camion_x + 3;
  end
  -- body...
end

function love.mousepressed(x, y, button, isTouch)
  if (button == 1) then
    clicker = clicker + 1;
  end
end

function love.keypressed(key, scancode, isrepeat)
  if key == "escape" then
    love.event.quit(0);
  end
end

-- ceci est une fonction anonyme
-- ref : https://rvagamejams.com/learn2love/pages/01-00-programming-basics.html
testLua = function(message)
  -- Topo sur la syntaxe de lua :
  -- Commentaires commencent via deux tirets
  -- Les tableaux commencent à l'index 1
  -- nil en lua = Null en java
  -- concaténation se fait avec l'opérateur ..
  -- typage dynamique, check via type()
  local liste = {"bananes", "pommes", "truc"}
  local objet = {a =  "coucou"}

  while false do
    -- nothing
  end
  for number = 1, 10 do
    -- nothing
  end
  for index = 1, #liste do
    print(liste[index])
  end

  for index, value in ipairs(liste) do
    print(index, value)
  end

  print(objet.a)

  return message
end
