# ch06 条件测试与比较

## 范例6-35 比较两个整数的大小

> 脚本传参和read读入的方式

1. [063501.sh](ch06/063501.sh)
2. [063502.sh](ch06/063502.sh)

## 范例6-36 打印选择菜单，按照选择项一键安装不同的Web服务

1. [0636.sh](ch06/0636.sh)

# ch07 if语句

## 范例7-6 判断字符串是否为数字的多种思路

1. [0706.sh](ch07/0706.sh)

# ch08 Shell函数

## 8.5 URL检测脚本

> 将函数传参转换成脚本文件命令行传参
1. [85.sh](ch08/85.sh)
2. [86.sh](ch08/86.sh)

## 8.6 一键优化系统脚本TODO

1. [sys_opt.sh](ch08/sys_opt.sh)
2. [check_opt.sh](ch08/check_opt.sh)

## 8.7 rsync服务启动脚本TODO

# ch09 case条件

## 9.2 打印菜单

```shell
menu() {
	cat <<-EOF # EOF前是减号
	....
	EOF # EOF前必须是TAB，而非4个空格
}
```

1. [menu.sh](ch09/menu.sh)

## 9.3 给输出字符串加颜色

1. [94.sh](ch09/94.sh)

## 9.3.2 给指定内容加指定颜色

1. [95.sh](ch09/95.sh)

## 9.3.3 给输出的字符串加背景色

1. [96.sh](ch09/96.sh)

## 9.4.1 通过传参的方式往/etc/openvpn_authfile.conf里添加用户

> 1)命令用法为：
>
> USAGE:sh adduser {-add|-del|-search} username
>
> 2)传参要求为：
>
> -add表示添加后面接的用户名
>
> -del表示删除后面接的用户名
>
> -search表示查找后面接的用户名
>
> 3)如果有同名的用户不能添加，如果没有对应的用户，无需删除，查找到用户或没有用户时给出明确提示

1. [add-openvpn-user.sh](ch09/add-openvpn-user.sh)

## 9.4.2 脚本实现Nginx服务启动关闭并开机自启动

> 1)命令用法为：
>
> USAGE:/etc/init.d/nginxd {start|stop|restart}
>
> 2)其他要求：
>
> 通过chkconfig进行开机自启动
>
> 3)nginx相关命令
>
> 启动服务命令：/application/nginx/sbin/nginx
>
> 停止服务命令：/application/nginx/sbin/nginx -s stop

1. [nginxd.sh](ch09/nginxd.sh)

## 9.4.3 MySQL的启动停止脚本TODO

## 9.4.4查看Nginx自带的启动服务脚本TODO

# ch10 while和until

## 10.2.1每隔秒输出一次系统负载

> 防止脚本执行中断的几个方法
> [Linux 技巧：让进程在后台可靠运行的几种方法](https://www.ibm.com/developerworks/cn/linux/l-cn-nohup/)

1. [101.sh](ch10/101.sh)
2. [1012.sh](ch10/1012.sh) 追加到日志

## 10.2.2 用while竖向打印54321 

1. [102.sh](ch10/102.sh)
2. [1022.sh](ch10/1022.sh)
3. [1023.sh](ch10/1023.sh)
4. [1024.sh](ch10/1024.sh)

## 10.2.3 计算从1加到100之和

1. [103.sh](ch10/103.sh)
2. [1032.sh](ch10/1032.sh)

## 10.2.4 猜数字游戏

> 先让系统随机生成一个数字(1-60)，让用户输入所猜的数字 

1. [104.sh](ch10/104.sh)

## 10.2.5 发短信，显示余额

> 手机充值10元，每发一次短信(输出并显示余额)花费1角5分，当余额低于1角5分时就不能发短信了，提示“余额不中，请充值”，充值后允许断续发短信

1. [1051.sh](ch10/1051.sh)
2. [1052.sh](ch10/1052.sh)
3. [1053.sh](ch10/1053.sh)

## 10.2.6监控网站 

> 使用while守护进程的方式监控网站，每隔10秒确定一次网站是否正常

1. [1061.sh](ch10/1061.sh)
2. [1062.sh](ch10/1062.sh)
3. [1063.sh](ch10/1063.sh)

## 10.2.7 分析Apache访问日志

> 把日志中每行的访问字节数对应的字段数字相加，计算出总的访问量
>
> while实现
>
> awk实现

1. [1071.sh](ch10/1071.sh)
2. [1072.sh](ch10/1072.sh)

## 10.5 while循环按行读文件的方式总结

> 1. 采用exec读取文件，然后进入while循环处理
> 2. 采用cat读取文件内容，然后通过管道进入while循环处理
> 3. 在while循环结尾done处理通过输入重定向指定读取的文件

1. [108.sh](ch10/108.sh)
   执行 sh108.sh /etc/hosts

## 范例10-10 写一个Shell脚本解决类DDoS攻击的生产案例

> 根据Web日志或系统网络连接数，监控某个IP的并发连接数，若短时内PV达到100，即调用防火墙命令封掉对应的IP

```shell
# 封掉IP的命令
iptables -I INPUT -s IP 地址 -j DROP

# 查看itables
iptables -L -n
```

1. [10101.sh](ch10/10101.sh)
2. [10102.sh](ch10/10102.sh)
3. [10103.sh](ch10/10103.sh)


# ch11 for和select

## 11.1 for与while的对比

1. [1101.sh](ch11/1101.sh)

## 11.2.1 竖向打印5、4、3、2、1这5个数

> 生成数字序列的n种方法
>
> {}
>
> seq

1. [1102.sh](ch11/1102.sh)

## 11.2.2 输出当前目录下的目录或文件名

```shell
mkdir -p ~/test/{test.txt,a.txt,a,b,c}
```

1. [1103.sh](ch11/1103.sh)

## 11.2.3 批量修改文件扩展名(txt改为jpg)

```shell
mkdir -p ~/test
touch ~/test/{test.txt,a.txt,b.txt,c.txt}

rename "txt" "jpg" *.txt
```

1. [1104.sh](ch11/1104.sh)

## 11.3.1 批量修改文件名

> 将文件名中的_finished去掉

```shell
# rename实现
rename "_finished" "" *.jpg
rename ".jpg" "_finished.jpg" *.jpg

# sed
ls|sed 's/_finished//'

# awk
ls|awk -F "." '{print "mv",$0,$1"_finished."$2}'|bash
```

1. [1105.sh](ch11/1105.sh)

## 11.3.2 批量去掉文件名中的bd字符

1. [1106.sh](ch11/1106.sh)

## 11.3.3 脚本实现仅sshd、rsyslog、crond、network、sysstat服务在开机启动

1. [1107.sh](ch11/1107.sh)

## 11.3.4 打印九九乘法表

1. [1108.sh](ch11/1108.sh)

## 11.3.5 计算1加到100(for循环实现)

1. [1109.sh](ch11/1109.sh)

## 11.3.5 每隔2秒访问一次baidu.com，一共访问5次

1. [1110.sh](ch11/1110.sh)

## 11.4.1 实现MySQL分库备份的脚本 TODO

1. [ch1111.sh](ch11/1111.sh)

## 11.4.2 实现MySQL分库分表备份的脚本 TODO

1. [ch1112.sh](ch11/1112.sh)

## 11.4.3 批量检查Web服务是否正常，并且发送相关邮件或手机报警信息 TODO

1. [ch1113.sh](ch11/1113.sh)

## 11.4.4 批量创建10个系统账号

> 批量创建10个系统账号(ysai01~ysai10)，并设置密码(随机数，字符和数字混合)

```shell
# chpasswd修改密码
echo "ysai01:123456"|chpasswd 
or
chpasswd <pass_file
pass_file格式
user01:pass01
user02:pass02
```

1. [ch1114.sh](ch11/1114.sh)
2. [ch111401.sh](ch11/111401.sh)

## 11.5 系统产生随机数的方法

1. [1115.sh](ch11/1115.sh)

## 11.7.1 select DEMO

> 1. 直接使用列表字符串
> 2. 使用数组做变量列表
> 3. 命令结果作为变量列表

1. [11171.sh](ch11/11171.sh)
2. [11172.sh](ch11/11172.sh)
3. [11173.sh](ch11/11173.sh)

## 11.7.2 定制select

> PS3系统环境变量用于控制select循环的提示符
> REPLY变量用于获取菜单项对应的数字，也就是用户输入的数字

1. [11174.sh](ch11/11174.sh)

## 11.7.3 打印选择菜单，按照选择一键安装不同的Web服务

> install lamp
>
> install lnmp
>
> exit
>
> tip:please input the num you want:

1. [1118.sh](ch11/1118.sh)

# ch12 循环控制及状态

## 12.3 continue/break/return/exit DEMO

1. [1201.sh](ch12/1201.sh)

## 12.4.1 为服务器临时配置多个IP

> IP范围为10.0.2.1~10.0.2.16，其中10.0.2.10不能配置

```shell
# ifconfig
# 添加IP
ifconfig eth0:0 10.0.2.10/24 up
# 删除IP
ifconfig eth0:0 10.0.2.10/24 down

# ip
# 添加IP
ip addr add 10.0.2.11/24 dev eth0 label eth0:0
# 删除IP
ip addr del 10.0.2.11/24 dev eth0 label eth0:0
```

1. [1202.sh](ch12/1202.sh)

## 12.4 解密 "4fe8bf20ed"

> 此密码是取RANDOM随机数采用md5sum加密后任意取连续10位的结果

```shell
grep "4fe8bf20ed" /tmp/md5.log
```

1. [1204.sh](ch12/1204.sh)
2. [120401.sh](ch12/120401.sh)

# ch13 Shell数组

## 13.2.1 数组的定义

1. [1301.sh](ch13/1301.sh)

## 13.3.1 使用循环打印数组元素

1. [1302.sh](ch13/1302.sh)

## 13.3.2 将命令结果作为数组元素定义并打印

1. [1303.sh](ch13/1303.sh)

## 13.5.1  打印字母数不大于6的单词

> I am oldboy teacher welcome to oldboy training class

1. [1304.sh](ch13/1304.sh)

## 范例13-5 批量检查 多个网址是否正常

1. [1063.sh](ch10/1063.sh)

## 13.5.3 每30秒监控一次MySQL主从复制是否异常TODO

# ch14 Shell开发规范

1. 第一行指定脚本解释器

2. 加版本版权等信息

3. 尽量用英文注释
   非要加中文，`export LANG="zh_CN.UTF-8"`

4. 脚本存放在固定的路径下，eg:/server/scripts

5. 成对的符号尽量一次写出来

   ```shell
   {}/[]/''/""/``/if~fi/for do~done/while/until/case
   ```

6. 字符串赋值给变量时应加双引号，并且等号前后不能有空格

7. 命名规范

   1. 脚本命名以".sh"为扩展名
   2. 模块的启动脚本和停止脚本统一命名为start_model.sh,stop_model.sh
   3. 监控脚本model_mon.sh
   4. 控制脚本model_ctl.sh

8. 缩进规范
   4个空格

## 变量的定义

全局变量

```shell
export BIG_MOUSE="black cat"
```

局部变量

```shell
# 使用驼峰语法还是用下划线，风格要统一
# 函数内的变量的定义
local i
```

变量的引用 

```shell
${APACHE_ERR}这样用避免产生歧义 
当变量内容为整数时直接使用$NUM
```

## 代码框架

```shell
bin
	执行
conf
	配置
func
	函数
```

# ch15 Shell调试

1. 写错了
   1. if/for/case 是否成对出现
   2. 中括号两端没空格

## 处理Windows下开发的脚本

```shell
# Windows下的回车换行是^M
cat -v while.sh
# 格式化
dos2unix while.sh
```

## bash命令参数

```shell
sh [-nvx] scripts.sh
-n 不执行，只检查语法 
-v 先输出脚本内容，再执行脚本
-x 输出并执行脚本内容，同时的

设置显示行号
set|grep PS
export PS4='+${LINENO}'
```

## set命令

```shell
# 执行如下命令，就不用sh带相应参数了
set -n 读命令但不执行
set -v 显示读取的所有行
set -x 显示所有命令及其参数

set -x 开启调试
set +x 关闭调试
```

# ch16 Shell开发环境

## vim

```shell
echo 'alias vi=vim' >>/etc/profile
tail -l /etc/profile
source /etc/profile
```

> vim配置文件  ~/.vimrc

[vimrc](ch16/vimrc)

**自动加版本注释信息**

```shell
autocmd BufNewFile *.sh exec ":call SetTitle()"
func SetTitle()
    if expadd("%:e") == 'sh'
        call setline(1, "#!/bin/sh")
        call setline(2, "# Author: ysai")
        call setline(3, "# Blog: http://iteye.com")
        call setline(4, "# Time: ".strftime("%F %T"))
        call setline(5, "# Name: ".expand("%"))
        call setline(6, "# Version: V1.0")
        call setline(7, "# Description: This is a test script.")
    endfi
endfunc
```



# ch17 Linux信号及trap命令

## 扩展:Linux信号及trap

![](ch17/sig.png)

```shell
# 查看Linux信号
kill -l
trap -l

# 查看系统快捷键映射
stty -a

# SIGINT 2 程序终止(interrupt)信号，在用户键入ctrl+c时发出
trap "" 2
trap "echo -n 'you are typeing ctrl+c'" 2

# 批量取消信号
trap "" 1 2 3 15 20
trap -p

# trap.sh命令行执行trap -p只打印4个，脚本执行会打印5个
trap "" 1 2 3 15 20
trap -p

# 批量恢复信号
trap 1 2 3 15 20
```

1. [while.sh](ch12/while.sh) `: 空操作，返回true`
2. [touch_file.sh](ch12/touch_file.sh) `清理临时文件`

## 跳板机解决方案

> 目标：
>
> 1. 首先做好ssh key验证或使用expect脚本
> 2. 实现传统的远程连接菜单选择脚本
> 3. 利用linux信号防止用户在跳板机上操作
> 4. 用户登录后立即调用脚本
>
> 知识点：
>
> 1. Linux信号和trap命令
>
> 2. ssh key免密码登录
>
>    ```shell
>    ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
>    ssh-keygen -t rsa -C "somce comment"
>    ssh-copy-id -i ~/.ssh/id_dsa.pub "-p passwd ysai@192.168.5.111"
>    ```
>
> 3. 登录系统第一个执行的脚本目录
>    /etc/profile.d/
>
> 步骤：
>
> 1. 准备
>    192.168.5.106 跳板机
>    192.168.5.111 目标机
>    192.168.5.112 目标机
>    192.168.5.113 目标机
>
> 2. 添加用户，设置密码生成rsa
>
>    ```shell
>    # tiaoban_init.sh
>    useradd tb
>    echo 123456|passwd --stdin tb
>    # su tb -l -c ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
>    su tb -l -c sh -c "ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa"
>
>    # 跳板机上执行
>    ssh-copy-id -i ~/.ssh/id_rsa.pub tb@192.168.5.111
>    ssh-copy-id -i ~/.ssh/id_rsa.pub tb@192.168.5.112
>    ssh-copy-id -i ~/.ssh/id_rsa.pub tb@192.168.5.113
>    ```
>
>    安全：
>
>    1. 跳板机禁止外网IP登录
>    2. 设置sshd只能用密钥登录/etc/ssh/sshd_config
>       `PasswordAuthentication no`
>    3. 远程登录VPN，再登录跳板机

1. [tianban_login.sh](ch12/tiaoban_login.sh)
2. [tiaoban.sh](ch12/tiaoban.sh)

# ch18 Expect

```shell
# 安装
rpm -qa expect
yum install -y expect
rpm -qa expect
```

## 18.3 Expect DEMO

> 执行： `expect ssh.exp`

1. [ssh.exp](ch18/ssh.exp)

## 18.4.2 执行ssh命令远程获取服务器负载值，并自动输入密码

1. [1801.exp](ch18/1801.exp)
2. [1802.exp](ch18/1802.exp)
3. [1803.sh](ch18/1803.sh) (此脚本接收3个参数通过与用户交互获取)
4. [1803.exp](ch18/1803.exp)

## 18.4.3 expect中的命令

```shell
send
exp_send
exp_continue
send_user 类似Shell中的echo
exit 类似Shell中的exit
```

1. [1804.exp](ch18/1804.exp)

## 18.5 expect中的变量

1. [1805.exp](ch18/1805.exp)

## 18.6 expect中的if

1. [1806.exp](ch18/1806.exp)

## 18.7 expect中的关键字

> eof  timeout

1. [1807.exp](ch18/1807.exp)

## 18.8.1 Expect脚本实现自动交互式批量执行命令

```shell
expect 1808.exp 192.168.5.111 "ls /"
expect 1808.exp 192.168.5.111 "free -m"
```

1. [1808.exp](ch18/1808.exp)

## 18.8.2 Shell循环执行Expect脚本命令

```shell
sh 1808.sh "ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa"
sh 1808.sh "expect /server/scripts/sshcopyid.exp"
```

1. [1808.sh](ch18/1808.sh)
2. [sshcopyid.exp](ch18/sshcopyid.exp)

## 18.8.3 批量发送文件

```shell
sh 1809.sh 1809.sh "~"
```

1. [1809.exp](ch18/1809.exp)
2. [1809.sh](ch18/1809.sh)

## 18.8.3.2 批量执行Shell脚本

> 先发送脚本，然后再远程执行脚本

```shell
rpm -qa httpd
# 新建安装脚本
echo "yum install httpd -y" > /server/scripts/yum_httpd.sh
# 发送脚本
sh 1809.sh /server/scripts/yum_httpd.sh /tmp/
# 执行脚本
sh 1808.sh "source /tmp/yum_httpd.sh"
```

## 18.8.4 自动化部署SSH密钥认证+ansible

> 批量分发SSH密钥并建立ansible批量管理环境

**step1 创建用户生成密钥对**

```shell
useradd ysai2
echo 123456|passwd --stdin ysai2
su ysai2 -
# 生成密钥对
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa >/dev/null 2>&1
```

**step2 将id_dsa.pub分发到所有服务器**

```shell
sh 1810.sh
```

1. [sshcopyid2.exp](ch18/sshcopyid2.exp)
2. [1810.sh](ch18/1810.sh)

**step3 实现无密码管理**

```shell
sh exec.sh
```

1. [exec.sh](ch18/exec.sh)

**step4 配合ansible**

> Python开发的基于SSH的批量管理工具，实现自动化运维管理

```shell
# 安装ansible
yum install -y epel-release
yum install -y ansible

# 编辑ansible的主机配置文件hosts,添加主机组
[root@www ch18]# tail -4 /etc/ansible/hosts
[webservers]
192.168.5.111
192.168.5.112
192.168.5.113

# 使用ansible，功能同exec.sh
# 这里执行失败？？？？
ansible webservers -m command -a "uptime"
```

# ch19 Shell面试题

 ## 01 批量生成随机字符文件名

> 要求每个文件名都要包含10个随机小写字母加固定字符串oldboy abcdefghij_oldboy.html

1. [1901.sh](ch19/1901.sh)

## 02 批量改名

> 将01中的oldboy全部改成oldgirl，html改成HTML
>
> 思路：
>
> 1. 循环
> 2. ls/awk/sh
> 3. rename

1. [1902.sh](ch19/1902.sh)

## 03 批量创建特殊要求用户

> 批量创建10个系统账号oldboy01-oldboy10并设置密码
>
> 密码为随机数，要求是字符和数字混合

1. [ch1114.sh](ch11/1114.sh)
2. [ch111401.sh](ch11/111401.sh)

## 04 扫描网络内存活主机

> 写一个脚本判断10.0.0.0/24网络里，当前在线的IP有哪些
>
> 思路：
>
> 1. ping
> 2. nmap

1. [1905a.sh](ch19/1905a.sh)
2. [1905b.sh](ch19/1905b.sh)

## 05 解决DOS攻击

> 思路：根据Web日志或网络连接数，监控当某个IP并发连接数或短时间内PV达到100时，即调用防火墙命令封掉对应的IP
> `iptables -I INPUT -s IP -j DROP` IP为要封掉的地址

**参考范例10-10**

## 06 MySQL数据库分库备份 TODO

## 07 MySQL数据库分库分表备份 TODO

## 08 筛选符合长度的单词

> 打印下面这句话中字母数不大于6的单词
> I am oldboy teacher welcome to oldboy training class

1. [1304.sh](ch13/1304.sh)

## 09 MySQL主从复制异常监控 TODO

## 10 比较整数大小

1. [063501.sh](ch06/063501.sh)
2. [063502.sh](ch06/063502.sh)
3. [0706.sh](ch07/0706.sh)

## 11 菜单自动化软件部署

> 打印菜单，按照选择执行安装脚本

1. [0636.sh](ch06/0636.sh)

## 12 Web及MySQL服务异常监测TODO

## 13 监控Memcached缓存服务TODO

## 14 开发脚本实现入侵检测与报警

> 监控Web站点目录(/usr/share/nginx/html或/var/html/www)下的所有文件是否被恶意篡改(文件内容被更改了)，如果有则打印改动的文件名(发邮件)，定时任务每3分钟执行一次
>
> **问题分析：**
>
> 恶意篡改：只要是未经许可的改动都是篡改
>
> 文件内容被改动有如下特征：
>
> 1. 大小可能会有变化 
> 2. 修改时间会变化 
> 3. 文件内容会变化 ，利用md5sum指纹校验
> 4. 增加或删除文件，比对每次检测前后的文件数量

```shell
# 1)如果没有测试环境，模拟一下数据
mkdir -p /var/html/www
cp -a /etc/a* /var/html/www/
cp -a /etc/b* /var/html/www/

# 2)建立文件指纹库
find /var/html/www -type f|xargs md4sum >/tmp/zhiwen.db.ori

# 3)建立文件库
find /var/html/www -type f >/tmp/wenjian.db.ori

# 4)检测文件内容变化
echo hello >>/var/html/www/aliases
md5sum -c --quiet /tmp/zhiwen.db.ori

# 5)检测文件数量变化
echo newfile >/var/html/www/newfile.txt
find /var/html/www -type f >/tmp/wenjian.db_curr.ori
diff /tmp/wenjian.db*

# 6)写脚本
# 7)配置定时任务
crontab -e
*/3 * * * * /bin/sh /server/scripts/1914.sh >/dev/null 2>&1
```

1. [1914.sh](ch19/1914.sh)

## 15 开发Rsync服务启动脚本TODO

## 16 开发MySQL多实例启动脚本TODO

## 17 开发学生实践抓阄脚本

## 18 破解RANDOM随机数

> 已知下面字符串是RANDOM随机数变量经过md5sum处理后再随机截取部分连续字符串的结果
>
> 21029299
> 00205d1c
> a3da1677
> 1f6d12dd
> 890684b

1. [1204.sh](ch12/1204.sh)
2. [120401.sh](ch12/120401.sh)
3. [1918.sh](ch19/1928.sh)

## 19 批量检查多个网站地址是否正常

**参考范例13-5**

## 20 单词及字母去重排序

> 用shell处理以下内容
> 20.txt
> the squid project provides a number of resources toassist users design,implement and support squid installations. Please browsethe the documentation and support sections for more infomation,by the oldboy training and oldboy,but not oldgirl.
>
> 1. 按单词去重排序
> 2. 按字母去重排序

```shell
# 按单词排序
sed 'y/,./  /' 20.txt|xargs -n1|sort|uniq -c|sort -nr

# 按字母排序
grep -o "[^ ,.]" 20.txt|sort|uniq -c|sort -nr
```

## 21 开发脚本管理服务端LVS TODO

## 22 LVS节点健康检查及管理脚本TODO

## 23 LVS客户端配置脚本TODO

## 24 模拟keepalived软件高可用TODO

## 25 编写正(或长)方形图形

1. [1925.sh](ch19/1925.sh)

## 26 编写等腰三角形图形字符

1. [1926.sh](ch19/1926.sh)

## 27 编写直角梯形图形字符

> 注意：直角梯形，等腰梯形 

1. [1927.sh](ch19/1927.sh)

## 28 51CTO博文爬虫脚本TODO

> 把http://oldboy.blog.51.cto.com地址中的所有博文，按照时间倒序列表排列
> http://oldboy.blog.51cto.com/all/2561410/
>
> 2017-09-13 title3 url3
> 2017-09-12 title2 url2
> 2017-09-11 title1 url1

```shell
curl http://oldboy.blog.51cto.com/all/2561410/
```



## 29 Nginx负载节点状态监测TODO

# ch20 子Shell及Shell嵌套模式




