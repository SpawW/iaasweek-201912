# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # IaaSWeek-k8s-01
  config.vm.define "iaasWeek-k8s-01" do |k8s01|
    config.vm.box = "ubuntu/trusty64"
    k8s01.vm.hostname = "iaasWeek-k8s-01"
    k8s01.vm.network :private_network, ip: "192.168.55.101"
    k8s01.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-01"
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "2048" ]
    end
  end
  # IaaSWeek-k8s-02
  config.vm.define "iaasWeek-k8s-02" do |k8s02|
    config.vm.box = "ubuntu/trusty64"
    k8s02.vm.hostname = "iaasWeek-k8s-02"
    k8s02.vm.network :private_network, ip: "192.168.55.102"
    k8s02.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-02"
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "2048" ]
    end
  end
  # IaaSWeek-k8s-03
  config.vm.define "iaasWeek-k8s-03" do |k8s03|
    config.vm.box = "ubuntu/trusty64"
    k8s03.vm.hostname = "iaasWeek-k8s-03"
    k8s03.vm.network :private_network, ip: "192.168.55.103"
    k8s03.vm.provider "virtualbox" do |v|
        v.name = "iaasWeek-k8s-03"
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "2048" ]
    end
  end
end