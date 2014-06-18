class clam::package {
    case $operatingsystem {
        debian, ubuntu: {
            include clam::package::debian
        }
        centos, RedHat: {
            include clam::package::redhat
        }
    }
}
