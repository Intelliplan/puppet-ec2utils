class ec2utils::ocf-elasticip(
  $aws_secret_key = 'dunnow',
  $aws_access_key = 'dunnow',
  $ec2_home  = '/usr/local/ec2/',
  $java_home = '',
  $ec2_url = 'https://eu-west-1.ec2.amazonaws.com',
  $aws_instance_id = 'your_id',
  $elastic_ip = '127.0.0.1',
)
{
  file { '/usr/lib/ocf/resource.d/ec2/':
    ensure => present,
  }

  file { '/usr/lib/ocf/resource.d/ec2/elastic-ip':
    content => template('ec2utils/elastic-ip.erb'),
    group   => '0',
    mode    => '0755',
    owner   => '0',
    require => Package['ec2-api-tools'],

  }

}

