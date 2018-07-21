node default {
     file {'/root/README':
          ensure  => file,
          content => 'This is readme file \n',
          owner   => 'root'
      }
}

node 'master.puppet.vm' {
  include role::app_server
}
