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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4R/0so2IIwgG0qR/AUMeiLuL5sa5YeEWy9ExE/QfIITyEFRl0XfpvmjbYv3885Pra0/CvFQ2vOtwRNEnqryYg4DKDbLKzdSAISqJPhONZgWQpbeWbDNzcVcMxBibOF1/7kiDSmU6/JSKAZGxL4P0dxos5f8CXuow7ek3eo9Ws/T+nd1zZ4Dd9mNJACtJL5Z9Hi7Qa9LIkOPANRIMyWcXjO3j4eP08sr1aEQEPnJs8VDJpIV3F1OeLZy4a8VtZ4Lj3T5wZyw9taj5bLA4WiNTOc6Nyz36HwTwsPlF+A2i71qtxCOMDzA99I7k9vISrey8ZzT0aT8skFChRkvCCvFZF',
	}  
}



