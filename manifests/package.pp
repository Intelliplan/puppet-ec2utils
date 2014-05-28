class ec2utils::package{

  package { 'ec2-api-tools':
    ensure => '1.6.13.0-1',
  }
  package { 'java-1.7.0-openjdk':
    ensure => '1.7.0.55-2.4.7.1.el6_5',
  }




}

