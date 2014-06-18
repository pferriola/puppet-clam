class clam( $email = "root", $scan_directory = "/" )
{
  include clam::package

  file {
    '/usr/local/sbin/clam.sh':
      ensure  => file,
      mode    => 744,
      owner   => "root",
      group   => "root",
      content => template("clam/clam.sh.erb"),
      require => Package['clamav'];
    '/etc/cron.daily/clamscan':
      ensure  => file,
      mode    => 755,
      owner   => "root",
      group   => "root",
      source => "puppet:///modules/clam/etc/cron.daily/clamscan",
      require => Package['clamav'];
  }
}
