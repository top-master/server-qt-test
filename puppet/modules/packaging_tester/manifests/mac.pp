class packaging_tester::mac inherits packaging_tester::base {
    include ccache
    include homedir_cpan
    include homedir_virtualenv

    if $packaging_tester::distcc_enabled {
        class { "distcc":
            hosts => $packaging_tester::distcc_hosts
        }

    include distccd
    }

    include puppet
}
