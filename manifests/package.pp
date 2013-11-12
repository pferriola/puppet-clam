class clam::package {
    case $operatingsystem {
        ubuntu: {
            include clam::package::debian
        }
        centos: {
            include clam::package::redhat
        }
    }
}
