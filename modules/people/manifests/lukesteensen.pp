class people::lukesteensen {
  include alfred
  include brewcask
  include chrome
  include dropbox
  include firefox
  include flux
  include heroku
  include iterm2::stable
  include java
  include minecraft
  include redis
  include screenhero
  include sourcetree
  include steam
  include transmission
  include zsh

  package {
    [
      'ansible',
      'go',
      'jq',
      'postgresql',
      'pv',
      'the_silver_searcher',
      'tmux',
      'vim',
    ]:
  }

  package { ['qlcolorcode', 'qlstephen', 'quicklook-json']: provider => 'brewcask' }

  repository { '/Users/luke/dotfiles':
    source => 'lukesteensen/dotfiles',
    notify => Exec['Copy dotfiles'],
  }

  repository { '/Users/luke/.vim/bundle/vundle':
    source => 'gmarik/vundle',
  }

  repository { '/Users/luke/.oh-my-zsh':
    source => 'robbyrussell/oh-my-zsh',
  }

  repository { '/Users/luke/dev/bitcast':
    source => 'lukesteensen/bitcast',
  }

  repository { '/Users/luke/dev/bluepencil':
    source => 'git@bitbucket.org:lukesteensen/bluepencil.git',
  }

  exec { 'Copy dotfiles':
    command => 'cd /Users/luke/dotfiles && rake',
    refreshonly => true,
  }

  file { "/Users/${::boxen_user}/Library/Fonts/Monaco+for+Powerline.otf":
    ensure => file,
    source => "${::boxen_repodir}/files/fonts/Monaco+for+Powerline.otf"
  }
}
