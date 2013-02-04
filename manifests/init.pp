class puppet-homebrew{
  Exec{
    path => '/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin',
  }
  exec{'install homebrew':
    command   => 'ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"',
    creates   => '/usr/local/bin/brew',
    timeout   => 0,
    logoutput => true,
  }
}
