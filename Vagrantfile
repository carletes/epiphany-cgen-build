# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--bioslogofadein", "off",
      "--bioslogofadeout", "off",
      "--bioslogodisplaytime", "0",
      "--biosbootmenu", "disabled",
    ]
  end

  config.vm.define "trusty64" do |n|
    n.vm.hostname = "trusty64"
    n.vm.box = "ubuntu/trusty64"
  end

  config.vm.provision "puppet"

  config.vm.provision "shell", path: "checkout-cgen.sh"

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http =     ENV.fetch("http_proxy",  ENV.fetch("HTTP_PROXY", nil))
    config.proxy.https =    ENV.fetch("https_proxy", ENV.fetch("HTTPS_PROXY", nil))
    config.proxy.ftp =      ENV.fetch("ftp_proxy",   ENV.fetch("FTP_PROXY", nil))
    config.proxy.no_proxy = ENV.fetch("no_proxy",    ENV.fetch("NO_PROXY", nil))
  end
end
