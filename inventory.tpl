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
%{ for idx, server in servers ~}
es_host_${idx}=server.private_ip
%{ endfor ~}