
node /gclient/ {



  include my-repos

  service {
    'iptables':
      name      => "iptables",
      ensure    => "stopped",
      enable    => false,
      hasstatus => "true"
  }

  include ganglia::common
  class {
    "ganglia::gmond":
      ganglia_cluster_name => "my cluster",
      ganglia_host         => "10.42.46.11",
  }


} 
