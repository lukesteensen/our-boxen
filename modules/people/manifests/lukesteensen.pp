class people::lukesteensen {
  include alfred
  include chrome
  include dropbox
  include firefox
  include flux
  include heroku
  include iterm2::stable
  include java
  include minecraft
  include sourcetree
  include steam
  include transmission
  include zsh

  package {
    [
      'postgresql',
      'pv',
      'the_silver_searcher',
    ]:
  }

  repository { '/Users/luke/dotfiles':
    source => 'lukesteensen/dotfiles',
  }

  repository { '/Users/luke/.oh-my-zsh':
    source => 'robbyrussell/oh-my-zsh',
  }

  repository { '/Users/luke/dev/bluepencil':
    source => 'git@bitbucket.org:lukesteensen/bluepencil.git',
  }
}
