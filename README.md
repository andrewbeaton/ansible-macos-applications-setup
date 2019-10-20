# Ansible macOS Applications Setup

Manages the installation of applications on macOS. Applications can be installed by Homebrew packages, casks or taps, Composer, Gem, NPM or Pip.

## Information

Tested on both macOS Catalina and macOS Mojave. Note that the macOS application locations have changed in macOS Catalina as shown in the example below.

### Adding applications

Edit 'default.config.yml' and add the applications wanted to be installed here.

#### Homebrew packages
````
homebrew_installed_packages: 
  - bash-completion  
  - nmap 
  - wget 
  - dockutil
````

#### Homebrew taps
````
homebrew_taps:
  - homebrew/core
  - homebrew/cask
````
#### Homebrew cask apps
````
homebrew_cask_appdir: /Applications
homebrew_cask_apps: 
  - 1password6
  - atext
  - caffeine 
  - dropbox  
  - google-chrome
  - iterm2  
  - microsoft-office  
  - spotify
  - visual-studio-code 
```` 

#### Composer packages
````
composer_packages: []
  # - name: drush
  #   state: present # present/absent, default: present
  #   version: "^8.1" # default: N/A
````

#### Gem packages
````
gem_packages: []
  # - name: bundler
  #   state: present # present/absent/latest, default: present
  #   version: "~> 1.15.1" # default: N/A
````

#### NPM packages
````
npm_packages: []
  # - name: webpack
  #   state: present # present/absent/latest, default: present
  #   version: "^2.6" # default: N/A
````

#### Pip packages
````
pip_packages: []
  # - name: mkdocs
  #   state: present # present/absent/latest, default: present
  #   version: "0.16.3" # default: N/A
````

## Example usage

````
$ ansible-galaxy install -r requirements.yml
$ ansible-playbook -i inventory --ask-become-pass main.yml
````

## Example usage by script
Included is `run.sh` that will install the xCode command line tools, install homebrew, git, homebrew cask versions, pip and ansible before running the playbook.

````
$ ./run.sh
````

## License

MIT / BSD
 
