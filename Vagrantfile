# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
# Adicionei variaveis comuns às 3 maquinas para facilitar a configuração em desktops sem 6GB de ram disponível para subir este ambiente (PS. O Jef não recomendou usar menos que 2GB de RAM... mas... boa sorte kkk)
BOX_NAME="bento/ubuntu-18.04"
NUM_VCPU=2
RAM_SIZE=2048

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # IaaSWeek-k8s-01
  config.vm.define "iaasWeek-k8s-01" do |k8s01|
    config.vm.box = BOX_NAME
    k8s01.vm.hostname = "iaasWeek-k8s-01"
    k8s01.vm.network :private_network, ip: "192.168.55.101"
    k8s01.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-01"
        v.customize [ "modifyvm", :id, "--cpus", NUM_VCPU ]
        v.customize [ "modifyvm", :id, "--memory", RAM_SIZE ]
    end
  end
  # IaaSWeek-k8s-02
  config.vm.define "iaasWeek-k8s-02" do |k8s02|
    config.vm.box = BOX_NAME
    k8s02.vm.hostname = "iaasWeek-k8s-02"
    k8s02.vm.network :private_network, ip: "192.168.55.102"
    k8s02.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-02"
        v.customize [ "modifyvm", :id, "--cpus", NUM_VCPU ]
        v.customize [ "modifyvm", :id, "--memory", RAM_SIZE ]
    end
  end
  # IaaSWeek-k8s-03
  config.vm.define "iaasWeek-k8s-03" do |k8s03|
    config.vm.box = BOX_NAME
    k8s03.vm.hostname = "iaasWeek-k8s-03"
    k8s03.vm.network :private_network, ip: "192.168.55.103"
    k8s03.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-03"
        v.customize [ "modifyvm", :id, "--cpus", NUM_VCPU ]
        v.customize [ "modifyvm", :id, "--memory", RAM_SIZE ]
    end
  end
end