
quadtreedevice="QuadTreeDevice"
quadtreeapi="QuadTreeAPI"
quadtreedatabase="PostGresQuadTreeData"

if [ ! -d $quadtreeapi ]; then
    echo "Cloning $quadtreeapi repo"
    git clone git@github.com:seb-torres3600/QuadTreeAPI.git
else 
    echo "$quadtreeapi exists, skipping"
fi

if [ ! -d $quadtreedevice ]; then
    echo "Cloning $quadtreedevice repo"
    git clone git@github.com:seb-torres3600/QuadTreeDevice.git
else 
    echo "$quadtreedevice exists, skipping"    
fi

if [ ! -d $quadtreedatabase ]; then
    echo "Cloning $quadtreedatabase repo"
    git clone git@github.com:seb-torres3600/PostGresQuadTreeData.git
else 
    echo "$quadtreedatabase exists, skipping"    
fi

docker compose up --build -d