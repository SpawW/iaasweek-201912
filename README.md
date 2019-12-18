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