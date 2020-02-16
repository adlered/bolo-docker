#######################
###  Bolo 配置文件  ###
#######################

## 请在 docker build 之前修改该文件 ##

# 数据库地址（不能填写 127.0.0.1 或 localhost ，必须填写内网或公网地址）
export MYSQL_URL="192.168.2.253:3306"
# 数据库用户名
export MYSQL_USER="root"
# 数据库密码
export MYSQL_PASS="123456"
# 数据库库名（请先在数据库中建立该库）
export MYSQL_DB="solo"

# HTTP 或 HTTPS ，设置错误可能导致网页显示异常
export SCHEME="HTTP"
# 端口
export PORT="8080"
# Lute-HTTP 服务端地址，如果没有请留空，格式：http://localhost:8249
######## 千万不要忘记！！！IP 地址前面要加上 http:// ########
export LUTE_HTTP=""

## 技术支持：AdlerED@outlook.com ##
