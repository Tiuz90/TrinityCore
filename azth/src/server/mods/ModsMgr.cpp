#include "ModsMgr.h"
#include "ModsLoader.h"
#include "ScriptMgr.h"

AzerothScript::AzerothScript(const char* name)
    : ScriptObject(name)
{
    ScriptRegistry<AzerothScript>::AddScript(this);
}

ModsMgr::ModsMgr() {
}

ModsMgr::~ModsMgr() {
}

void ModsMgr::Initialization() {
    AddMods();
}
