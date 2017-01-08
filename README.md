## 准备
---
安装下列工具:

1. [virtualbox](https://www.virtualbox.org/wiki/Downloads)
2. [vagrant](https://www.vagrantup.com/downloads.html)
3. [ansible](https://www.ansible.com/)

最好都是最新的版本.

## provision
---

### with shell
---
1. `cd shell`
2. 运行 `vagrant up --provision-with shell`

### provision with ansible
---
1. `cd ansible`
2. 运行 `vagrant up --provision-with ansible`

### provision with puppet
---
1. `cd puppet`
2. 运行 `vagrant up`
3. 运行 `vagrant up --provision-with puppet`

### provision with chef
---
1. `cd chef`
2. 运行 `vagrant up --provision-with chef`


## cloudformation相关
----

1. 创建vpc, `aws cloudformation create-stack --stack-name vpc-20170108 --template-body file://aws/cloudformation/template/vpc.json --parameters file://aws/cloudformation/parameters/vpc-params.json`

2. 创建应用, `aws cloudformation create-stack --stack-name  ciao --template-body  file://cloudformation/template/ciao.yml --capabilities CAPABILITY_IAM`

3. immutable asg deployment `aws cloudformation update-stack --stack-name  ciao --template-body  file://cloudformation/template/ciao.yml --capabilities CAPABILITY_IAM`

## 说明
----
1. ssh 到vagrant虚拟机，`vagrant ssh`




### 参考资料
---
1. [Ansible Best Practice](https://www.ansible.com/blog/ansible-best-practices-essentials)

2. [Ansible docker module](http://docs.ansible.com/ansible/docker_module.html)

3. [Chef docker module](https://github.com/chef-cookbooks/docker)

4. [Chef best practices](https://github.com/pulseenergy/chef-style-guide)

5. [Puppet Best Practices](http://dl.finebook.ir/book/61/14308.pdf)

6. [RPM package example](https://github.com/iambowen/bbs_team_b/blob/master/bbs.spec)

7. [bash my aws](https://github.com/realestate-com-au/bash-my-aws)