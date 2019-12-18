# iaasweek-201912

Este repositório foi criado para hospedar os códigos que eu criar durante a IaaSWeek de dezembro de 2019.

O arquivo **Vagrantfile** provisiona 3 máquinas virtuais com **Ubuntu Server** e **2 gigas** de memória RAM.

O arquivo **connect.sh** serve para se conectar às VMs com o usuário vagrant. 

Exemplo de uso:
```
# Conectar-se a instancia01
./connect.sh iaasWeek-k8s-01

# Conectar-se a instancia01
./connect.sh iaasWeek-k8s-02

# Conectar-se a instancia01
./connect.sh iaasWeek-k8s-03

```

Para seguir o mesmo rítmo de aula que foi feito pelo Jefferson com a AWS, precisaremos adicionar não uma, mas três chaves privadas (senão teremos que modificar a configuração do arquivo de hosts especificamente para este fim e não é esta a minha idéia):

```
ssh-add "$PWD/.vagrant/machines/iaasWeek-k8s-01/virtualbox/private_key"
ssh-add "$PWD/.vagrant/machines/iaasWeek-k8s-02/virtualbox/private_key"
ssh-add "$PWD/.vagrant/machines/iaasWeek-k8s-03/virtualbox/private_key"
```

Versão de 1 linha com o mesmo resultado:
```
for i in {1..3}; do ssh-add "$PWD/.vagrant/machines/iaasWeek-k8s-0$i/virtualbox/private_key"; done
```

Outra questão é a parte de configuração do ansible para, exclusivamente neste ambiente, não verificar o fingerprint dos hosts **(ATENCAO... SOMENTE PARA ESTE AMBIENTE... NAO FAZER ISSO PARA PRODUÇÃO...)**. Isso pode ser feito facilmente ao criar o arquivo **ansible.cfg** com o conteúdo abaixo.

```
[defaults]
host_key_checking = False
```

Caso deseje salvar snapshots das VMs (costumo fazer isso logo que subo uma vm de testes... assim se eu precisar zerar ela e retornar consigo fazer isso de forma mais rápida):

```
vagrant snapshot save iaasWeek-k8s-01  zero
vagrant snapshot save iaasWeek-k8s-02  zero
vagrant snapshot save iaasWeek-k8s-03  zero
```