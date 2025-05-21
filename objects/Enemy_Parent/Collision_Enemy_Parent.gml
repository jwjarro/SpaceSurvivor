//Stop enemies overlapping
if (other.x >= x)        
    x -= 1; 
if (other.y >= y)        
    y -= 1;
if (other.x <= x)        
    x += 1;
if (other.y <= y)        
    y += 1;