# client SSH configuration file to connect to a server without typing a password using puppet

file_line { 'no password authenciation':
  ensure  => present,
  path    => '/etc/ssh/sshd_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

file_line { 'use private key':
  ensure  => present,
  path    => '/etc/ssh/sshd_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true,
}
