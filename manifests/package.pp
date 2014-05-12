class clam::package {
    case $operatingsystem {
        debian, ubuntu: {
            include clam::package::debian
        }
        centos: {
            include clam::package::redhat
        }
    }
}
