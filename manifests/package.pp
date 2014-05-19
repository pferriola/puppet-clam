class clam::package {
    case $operatingsystem {
        ubuntu: {
            include clam::package::debian
        }
        centos, RedHat: {
            include clam::package::redhat
        }
    }
}
