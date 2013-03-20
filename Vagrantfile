Vagrant::Config.run do |config|
  config.vm.define :djangovm do |django_config|
    # Every Vagrant virtual environment requires a box to build off of.
    django_config.vm.box = "debiansqueeze64"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    django_config.vm.box_url = "http://dl.dropbox.com/u/937870/VMs/squeeze64.box"

    # Forward a port from the guest to the host, which allows for outside
    # computers to access the VM, whereas host only networking does not.
    django_config.vm.forward_port 80, 8090
    #django_config.vm.forward_port 8000, 8009
    django_config.vm.forward_port 9876, 9870


    config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    # Enable provisioning with chef solo, specifying a cookbooks path (relative
    # to this Vagrantfile), and adding some recipes and/or roles.
    #
    #
    #   # You may also specify custom JSON attributes:
    #   chef.json = { :mysql_password => "foo" }
  end
end
