%{ for group in groups ~}
[${group}]
%{ for server in servers ~}
${server.name} ansible_ssh_host=${server.ansible_ssh_host} private_ip=${server.private_ip}

%{ endfor ~}
%{ endfor ~}

[amazon:vars]
ansible_python_interpreter=/usr/bin/python2

[all:vars]
ansible_user=${hostname}
ansible_ssh_private_key_file=${key_path}
%{ for server in servers ~}
es_host=${server.private_ip}
%{ endfor ~}
%{ for server in servers ~}
private_dns=${server.private_dns}
%{ endfor ~}