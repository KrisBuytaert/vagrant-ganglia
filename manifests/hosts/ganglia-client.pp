

node 'client' { 


include default-repo

service { 'iptables':
	name      => "iptables",
        ensure    => "stopped",
        enable    => false,
        hasstatus => "true" 
}


include ganglia::client 


} 

