class clam::package::debian(
  ) {
    package
    {
      'clamav-freshclam':
          ensure => latest;
      'clamav':
          require => Package["clamav-freshclam"],
          ensure  => latest;
    }
}