VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.define "hunnor", autostart: false do |hunnor|
		hunnor.vm.box = "ubuntu/bionic64"
		hunnor.vm.hostname = "hunnor"
		hunnor.vm.network "forwarded_port", guest:   80, host: 1080
		hunnor.vm.network "forwarded_port", guest: 3000, host: 3000
		hunnor.vm.network "forwarded_port", guest: 3306, host: 3306
		hunnor.vm.network "forwarded_port", guest: 8080, host: 8080
		hunnor.vm.network "forwarded_port", guest: 8081, host: 8081
		hunnor.vm.network "forwarded_port", guest: 8082, host: 8082
		hunnor.vm.network "forwarded_port", guest: 8983, host: 8983
		hunnor.vm.provider "virtualbox" do |vb|
			vb.memory = 4096
			vb.name = "HunNor"
		end
		hunnor.vm.provision "ansible" do |ansible|
			ansible.playbook = "ansible/hunnor.yml"
			ansible.extra_vars = {
				ansible_python_interpreter: "/usr/bin/python3"
			}
		end
	end

	config.vm.define "rancher", autostart: false do |rancher|
		rancher.vm.box = "ubuntu/bionic64"
		rancher.vm.hostname = "rancher"
		rancher.vm.network "public_network", :mac => "0800275E876B"
		rancher.vm.provider "virtualbox" do |vb|
			vb.cpus = 2
			vb.memory = 8192
			vb.name = "Rancher"
		end
		rancher.vm.provision "ansible" do |ansible|
			ansible.playbook = "ansible/rancher.yml"
			ansible.extra_vars = {
				ansible_python_interpreter: "/usr/bin/python3"
			}
		end
	end

end
