#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#配置插件安装目录
install_path=/www/server/panel/plugin/dockerfly

# 安装Docker容器服务
InstallDocker()
{
	echo '安装Docker容器服务.'
	curl -sSL https://get.daocloud.io/docker | sh
	echo 'Docker容器服务安装成功.'
}

# 启动Docker容器服务
StartDockerService()
{
	echo '启动Docker容器服务'
	systemctl enable docker
	systemctl start docker
	echo 'Docker容器服务启动成功.'
}

# 停止Docker容器服务
StopDockerService()
{
	echo 'Docker容器服务停止中'
	systemctl stop docker
	echo 'Docker容器服务停止完成.'
}

#安装
Install()
{
	
	echo '正在安装...'
	#==================================================================
	#依赖安装开始

	InstallDocker()
	StartDockerService()

	#依赖安装结束
	#==================================================================

	echo '================================================'
	echo '安装完成'
}

#卸载
Uninstall()
{
	StopDockerService()
	rm -rf $install_path
}

#操作判断
if [ "${1}" == 'install' ];then
	Install
elif [ "${1}" == 'uninstall' ];then
	Uninstall
else
	echo 'Error!';
fi
