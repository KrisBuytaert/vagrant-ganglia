

node /gserver/ {

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
    "ganglia::gmetad":
      deaf_yesno           => "no",
      mute_yesno           => "no",
      ganglia_host         => "10.42.46.11",
      ganglia_cluster_name => "my cluster",
  }
  class {
    "ganglia::gmond":
      deaf_yesno                => "no",
      mute_yesno                => "no",
      host_dmax                 => "86400",
      enable_udp_recv_channel   => 'yes',
      enable_tcp_accept_channel => 'yes',
      ganglia_host              => "10.42.46.11",
      ganglia_cluster_name      => "my cluster",
  }


  include ganglia::web

  package {"php": ensure => present ; }
  package {"telnet": ensure => present ; }
}
