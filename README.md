# AleksandrKalitin_infra
AleksandrKalitin Infra repository

Для подключения в одну строчку использовать команду :

ssh <user_name>@<Внутренний IPv4 целевого ресурса> -o "proxycommand ssh -W %h:%p -i ~/.ssh/id_rsa <user_name>@<Публичный IPv4 бастиона>"

, где id_rsa - непубличный ключ

Для создания алиаса необходимо создать файл ~/.ssh/config в котором прописать:

Host someinternalhost

  Hostname <Внутренний IPv4 целевого ресурса>

  ForwardAgent yes

  User <user_name>

  ProxyCommand ssh -W %h:%p -i ~/.ssh/id_rsa appuser@<><Публичныйичный IPv4 бастиона>"

bastion_IP = 84.201.135.91

someinternalhost_IP = 10.128.0.17

testapp_IP = 51.250.67.233

testapp_port = 9292
