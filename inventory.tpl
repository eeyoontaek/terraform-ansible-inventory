%{ for group in groups ~}
[${group}]

%{ for server in servers ~}
${name} ansible_ssh_host=${ansible_ssh_host} private_ip=${private_ip}

%{ endfor ~}

%{ endfor ~}

[all:vars]
hostname=${hostname}
ansible_port = 22