#include "AzthTestSystem.h"

class AzthTestSystem : public WorldScript {
public:

    AzthTestSystem() : WorldScript("AzthTestSystem") {
    }

    WorldScript* OnStartup() const override {

    }

public:

    void runTests() {
        /*azth_commandscript cmd = AddSC_azth_commandscript();

        Player *pCurrChar = LoadPlayer(1);
        ChatHandler *ch = ChatHandler(pCurrChar->GetSession())
        cmd->handleAzthMaxSkill(ch);*/
    }
};

void AddTestSystemScripts() {
    new AzthTestSystem();
}
