class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCoZK8C3u3shgNQjXc7j8FQDt2D91bJHrDUrwyRG4DOp7dDVm+WUb15lR5RA6ZaU0fzSve2iU40Vs0J28rV7qUEsm7Z4AyUcBDltG/WR4hP5218IsAx4u40SyMzGWRuRc7SZj4+jJXDIbekrn98ekMUkmILavT/rawa9lScacSIF1P1QF0c/BLZrEkmTS//dfohWiMltGo3QZA+MwHJcPzD1Uh/P5Te6iC8YYUAPXz/OHop4mvydQQm90Y2ClTttqYJZ/ogbWLRy33TUlNvvfvJcgU7/dFbJNYuD0P77tj7BEhqFWpSNAiAp9sTkupNYDs0crnUWRKgZ6EpnFtaNto9',
	}  
}
