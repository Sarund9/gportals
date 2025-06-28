#ifndef PORTAL_H
#define PORTAL_H

#include "scene/main/node.h"

class Portal : public Node {
    GDCLASS(Portal, Node);

protected:
    static void _bind_methods();

public:

    Portal();
}

#endif