# infomaniak-ssh-php-version.plugin.zsh

This is an [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) plugin to switch PHP version from .php-version in Infomaniak SSH.

# Install

```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/Akollade/infomaniak-ssh-php-version.plugin.zsh infomaniak-ssh-php-version
```

Edit `~/.zshrc` to enable the plugin and set the PHP path template:

```
PHP_PATH_TEMPLATE="/opt/php__PHP_VERSION__/bin"
plugins=(... infomaniak-ssh-php-version)
```

Example for `PHP_PATH_TEMPLATE`:

* Infomaniak : `PHP_PATH_TEMPLATE="/opt/php__PHP_VERSION__/bin"`
* Homebrew : `PHP_PATH_TEMPLATE="$(brew --prefix)/opt/php@__PHP_VERSION__/bin"`

# Inspired by

* https://github.com/xellos866/php-version_rcfile-switcher
* https://github.com/mathieu-coingt/infomaniak-ssh-php-version
