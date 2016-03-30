# par1: hook_name
function runHooks() {
  hook_name="HOOKS_MAP_$1"
  read -r -a SRCS <<< ${!hook_name}
  echo $SRCS
  for i in "${SRCS[@]}"
  do
  	$i # run registered hook
  done
}

function registerHooks() {
  hook_name="HOOKS_MAP_$1"
  hooks=${@:2}
  declare -g "$hook_name+=$hooks "
}
