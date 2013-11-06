class clam::package {
    case $operatingsystem {
        debian,ubuntu: {
            include clam::package::debian
        }
        centos,fedora,rhel: {
            include clam::package::redhat
        }
    }
}