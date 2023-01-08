%{ for group in groups ~}
[${group}]
%{ for server in servers ~}
${server.name} ansible_ssh_host=${server.ansible_ssh_host} private_ip=${server.private_ip}

%{ endfor ~}
%{ endfor ~}

[all:vars]
hostname=${hostname}
ansible_ssh_private_key_file=${key_path}
ansible_port = 22