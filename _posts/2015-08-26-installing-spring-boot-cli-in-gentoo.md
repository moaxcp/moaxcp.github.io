1. download the latest spring-boot-cli
2. untar to /opt

    untar -xf spring-boot-cli-1.2.5.RELEASE-bin.tar.gz

3. `vi /etc/profile.d/spring-cli.sh`

    !/bin/bash
    export SPRING_HOME=/opt/spring-1.2.5.RELEASE
    PATH=${SPRING_HOME}/bin:${PATH}
    export PATH
    
4. restart the terminal or source .bashrc (this is where I source /etc/profile.d)
