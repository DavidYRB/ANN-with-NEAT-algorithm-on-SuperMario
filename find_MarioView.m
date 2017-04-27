function MarioView = find_MarioView(x,y,r)

        MarioView = binary_mapIdx(x-r+8:x+r,y-r+5:y+r);

end