local Explosion = {}

function Explosion.load()

    Explosion.spriteSheet = love.graphics.newImage("images/Explosion.png")
    Explosion.nbSprites = 12
    Explosion.spriteWidth = 96
    Explosion.spriteHeight = 96
    Explosion.frame = 0
    Explosion.images = {}

    for i=0, Explosion.nbSprites, 1 do

        Explosion.images[i] = 
        love.graphics.newQuad((i - 1) * Explosion.spriteWidth, 0, Explosion.spriteWidth, Explosion.spriteHeight, Explosion.spriteSheet:getWidth(), Explosion.spriteSheet:getHeight())

    end

end

function Explosion.update(dt)

    Explosion.frame = (Explosion.frame + (10 * dt)) % #Explosion.images

    print(Explosion.frame)

end

function Explosion.draw()

    love.graphics.draw(Explosion.spriteSheet, Explosion.images[math.floor(Explosion.frame)])

end

return Explosion