source "../bash_shared/includes.sh"

AZTH_PATH_COMPILER="$AZTH_PATH_BIN/compiler"

source "$AZTH_PATH_COMPILER/config.sh.dist" # "hack" to avoid missing conf variables

source "$AZTH_PATH_COMPILER/config.sh" # should overwrite previous

source "$AZTH_PATH_COMPILER/includes/defines.sh"

INSTALL_PATH=$(readlink -f "$BINPATH/../")


function azth_on_after_build() {
    # move the run engine
    cp -rvf "$AZTH_PATH_BIN/runners/run-engine" "$INSTALL_PATH/bin/"
}

registerHooks "ON_AFTER_BUILD" azth_on_after_build



# include custom scripts
customFile="$AZTH_PATH_CUSTOM/bin/compiler/custom.sh"
if [ -f $customFile ]
then
  source $customFile
fi
