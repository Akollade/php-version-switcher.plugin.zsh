php_path_template=/opt/php__PHP_VERSION__/bin
if [[ -n "${PHP_PATH_TEMPLATE}" ]]; then
    php_path_template=${PHP_PATH_TEMPLATE}
fi

pvs_load_php_version() {
    # Current php version without patch version
    local php_current_version=$(php -r "echo PHP_VERSION;" | cut -d'.' -f 1,2)

    # Path to the .php-version file
    local php_version_path="$(pvs_find_php_version)"

    # Check if there exists a .php-version file
    if [ -f "$php_version_path" ]; then
        local php_version=$(cat ${php_version_path})
    else
        return
    fi

    # Check if the current php version matches the version in .php-version
    if [ "$php_version" != "$php_current_version" ]; then
        # switch php versions
        echo "Using PHP: $php_version"
        php_path="${php_path_template/__PHP_VERSION__/"$php_version"}"
        export PATH=$php_path:$PATH
    fi
}


# Functions to find .php-version file
pvs_find_php_version() {
  local dir
  dir="$(pvs_find_up '.php-version')"
  if [ -e "${dir}/.php-version" ]; then
    echo "${dir}/.php-version"
  fi
}

pvs_find_up() {
  local path_
  path_="${PWD}"
  while [ "${path_}" != "" ] && [ ! -f "${path_}/${1-}" ]; do
    path_=${path_%/*}
  done
  echo "${path_}"
}

# Marks as function and suppress alias expansion
autoload -U add-zsh-hook

# Add the above function when the present working directory (pwd) changes
add-zsh-hook chpwd pvs_load_php_version

pvs_load_php_version
