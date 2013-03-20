vagrant up

cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.0.10 "cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"
# password is vagrant, see http://docs-v1.vagrantup.com/v1/docs/base_boxes.html

knife solo prepare vagrant@192.168.0.10

knife solo cook vagrant@192.168.0.10 nodes/default.json
