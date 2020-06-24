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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDefLYdWMQeRqSXv4bgxZiATZlKBNNdJZKcHHGqO7gbJNn5SWHDbLfWaLI9MJKLo4wk0nwiyQpY2FTiCga6tmCzApqoOZ5XACHJEvZWibH4xPjqjaNB/9DRd0wHIE2XpgW0WAVjFdYfzStyKYb1DzkN8YbF+5NzZFowo4EVGz89cc6UhkM3zt7HTz7MPMTDLefZ1yChrVWn/cFmLp6UZB0yAAJnT/zGcD+Z0rzFnYlZFctQCADdTKxTgQ+w/JpGKPsehy92STLh2iL7VAXw0TDgW4ZI6ZtFlE93pm2WBDVBG2qMdQs47Db94vBT/vwWcXH2eP92rYdmZOprWkU2tq09 root@master.puppet.vm',
	}  
}
