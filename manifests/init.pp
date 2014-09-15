class win-jboss {

  exec { 'run-win-jboss.rb':
  command => '/opt/puppet/bin/ruby /etc/puppetlabs/puppet/modules/win-jboss/manifests/win-jboss.rb',
  }
}

