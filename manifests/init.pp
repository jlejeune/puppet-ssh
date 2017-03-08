#
# Mailops Team
#
# Class ssh to create /root/.ssh/config file
#

class ssh {

  package { 'openssh-server':
    ensure  => latest,
  }

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    source  => "puppet:///modules/${module_name}/sshd_config",
    notify  => Service['sshd'],  # this sets up the relationship
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    require => Package['openssh-server'],
  }
  
  service { 'sshd':
    ensure  => 'running',
    enable  => true,
    require => Package['openssh-server'],
  }
}
