class clam::package::redhat (
) {
    package
    {
      'clamav-db':
          ensure => latest;
       'clamav':
          require => Package["clamav-db"],
          ensure  => latest;
    } 
}