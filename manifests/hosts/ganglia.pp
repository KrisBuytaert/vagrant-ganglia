

node /gserver[0-9]+/ {



  include default-repo

  service {
    'iptables':
      name      => "iptables",
      ensure    => "stopped",
      enable    => false,
      hasstatus => "true"
  }


  include ganglia::common

   class {
     "ganglia::gmetad":
       deaf_yesno           => "no",
       mute_yesno           => "no",
       ganglia_host         => "10.42.42.11",
       ganglia_cluster_name => "my cluster",
                         }

}

  include ganglia::web

  package {"php": ensure => present ; } 
