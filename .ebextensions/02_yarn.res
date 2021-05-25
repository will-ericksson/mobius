commands:

  01_node_get:
    cwd: /tmp
    command: 'sudo curl -sL https://rpm.nodesource.com/setup_13.x | sudo bash -'

  02_node_install:
    cwd: /tmp
    command: 'sudo yum -y install nodejs'

  03_yarn_get:
    cwd: /tmp
    # don't run the command if yarn is already installed (file /usr/bin/yarn exists)
    test: '[ ! -f /usr/bin/yarn ] && echo "yarn not installed"'
    command: 'sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo'

  04_yarn_install:
    cwd: /tmp
    test: '[ ! -f /usr/bin/yarn ] && echo "yarn not installed"'
    command: 'sudo yum -y install yarn'
