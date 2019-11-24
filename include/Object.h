#include <string>

#ifndef OBJECT_H
#define OBJECT_H

class Object
{
   public :
      Object();
      virtual void render() = 0;
      ~Object();
};

#endif