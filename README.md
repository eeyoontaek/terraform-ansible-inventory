## USAGE
```hcl
module "inventory" {
  source  = "eeyoontaek/inventory/ansible"
  version = "0.1.6"
  groups = ["amazon"] # 인벤토리에 필요한 그룹 / list(string)
  servers = [         # 필요한 서버 정보 / list(object)
    {
        "name" : "amazon1",
        "ansible_ssh_host" : aws_instance.da_platform_by_ami2.public_ip,  # 해당 서버의 public IP
        "private_ip" : aws_instance.da_platform_by_ami2.private_ip,       # 해당 서버의 private IP
        "private_dns" : aws_instance.da_platform_by_ami2.private_dns      # 해당 서버 DNS
    }
  ]
  hostname = "ec2-user"   # 호스트
  key_path = "<path to key>"   # 키 경로
  depends_on = [
    aws_instance.da_platform_by_ami2
  ]
}

```

## RESULT
inventory.dev
```
[amazon]
입력한 서버 이름 ansible_ssh_host=생성한 서버의 public IP private_ip=생성한 서버의 private IP


[amazon:vars]
ansible_python_interpreter=/usr/bin/python2

[all:vars]
ansible_user=입력한 Hostname
ansible_ssh_private_key_file=입력한 key path
es_host=172.21.11.152
private_dns=생성한 서버의 dns
```
