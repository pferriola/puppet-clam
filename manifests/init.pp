class clam( $email = "root", $scan_directory = "/" )
{
  package
  {
    'clamav-db':
      ensure => latest;
    'clamav':
      require => Package["clamav-db"],
      ensure  => latest;
  } 

  file {
    '/usr/local/sbin/clam.sh':
      ensure  => file,
      mode    => 744,
      owner   => "root",
      group   => "root",
      #source => "puppet:///modules/clam/usr/local/sbin/clam.sh";
      content => template("clam/clam.sh.erb");
    '/etc/cron.daily/clamscan':
      ensure  => file,
      mode    => 755,
      owner   => "root",
      group   => "root",
      source => "puppet:///modules/clam/etc/cron.daily/clamscan";
  }
}
