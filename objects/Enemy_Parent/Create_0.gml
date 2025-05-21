//Scale sprite
scale = global.scale;
image_xscale *= scale;
image_yscale *= scale;

//Set screen wrapping
move_wrap(true, true, 16);

//Default stats

    //Movement
    walkSpeed = 1;
    flankingDistance = 64;
    flankingOffset = 64;

    //Health
    maxHp = 1;
    currentHp = maxHp;

    //Flash when hit
    flashColor = c_red;
    flashLength = 10;