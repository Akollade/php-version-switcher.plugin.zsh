# php-version-switcher.plugin.zsh

This is an [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) plugin to switch PHP version from .php-version.

# Install

```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/Akollade/php-version-switcher.plugin.zsh php-version-switcher
```

Edit `~/.zshrc` to enable the plugin and set the PHP path template:

```
PHP_PATH_TEMPLATE="/opt/php__PHP_VERSION__/bin"
plugins=(... php-version-switcher)
```

Example for `PHP_PATH_TEMPLATE`:

* Infomaniak : `PHP_PATH_TEMPLATE="/opt/php__PHP_VERSION__/bin"`
* Homebrew : `PHP_PATH_TEMPLATE="$(brew --prefix)/opt/php@__PHP_VERSION__/bin"`

# Inspired by

* https://github.com/xellos866/php-version_rcfile-switcher
* https://github.com/mathieu-coingt/infomaniak-ssh-php-version
