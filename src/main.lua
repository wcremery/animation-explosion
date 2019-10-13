require("config")
require("constants")

function love.load()

    myExplosion = require("explosion")

    myExplosion.load()

end

function love.update(dt)

    myExplosion.update(dt)

end

function love.draw()

    myExplosion.draw()

end

function love.keypressed(key)

    print(key)

end