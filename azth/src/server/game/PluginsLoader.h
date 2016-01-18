/*
    this file is used for "mod" scripts
*/

#ifndef AZTH_PLG_LOADER
#define AZTH_PLG_LOADER

/* This is where mods' loading functions should be declared. */

void AzthAddPlg()
{
    /* This is where mods should be added. */
#ifdef AZTH_WITH_PLUGINS
    void AddAzthCustomScripts();
#endif
#ifdef AZTH_WITH_TC_PLUGINS
    void AddTcCustomScripts();
#endif
}

#endif


