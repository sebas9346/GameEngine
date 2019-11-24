
#include <string>
#include "Object.h"

#ifndef WALL_H
#define WALL_H

class Wall : public Object
{
    public:

        Wall(void);
        ~Wall(void);
        virtual void render();
    private:
        struct pos
        {
            int x;
            int y;
            int z;
        };

};

#endif