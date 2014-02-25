node 'bfair' {
	include nodejs
	
	class { 'rabbitmq':
		port                    => '5672',
		service_manage          => true,
		environment_variables   => {
			'RABBITMQ_NODENAME'     => 'server',
			'RABBITMQ_SERVICENAME'  => 'rabbitMQ'
		}
	}
	
	class {'::mongodb::server':
		  port    => 27018,
		  verbose => true,
	}
}