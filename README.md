<!--suppress HtmlDeprecatedAttribute -->

<div align="center">
  <p>
      <img alt="logo" src="https://raw.githubusercontent.com/zsuroy/termuxBot/master/logo.png"/>
  </p>

  <h1>TermuxBot</h1>
  <p> 基于Magisk的开机自启termux模块</p>
  <p>开发环境: Vscode (MacOS)  </p>
  <p>作者: 👨🏻‍💻 Suroy (https://suroy.cn) </p>

  <p>
    <a href="https://suroy.cn"><img alt="SUROY(BLOG)" src="https://img.shields.io/website?down_message=FLOWER&label=SUROY&up_color=ff69b4&up_message=DREAM&logo=micro:bit&url=https%3A%2F%2Fsuroy.cn"></a>
    <a href="https://github.com/zsuroy"><img alt="Suroy" src="https://img.shields.io/github/languages/top/zsuroy/termuxBot?style=flat-square"/></a>
    <a href="https://github.com/zsuroy"><img alt="Suroy" src="https://img.shields.io/github/languages/count/zsuroy/termuxBot?style=flat"/></a>
    <a href="https://github.com/zsuroy"><img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/zsuroy/termuxBot"></a>
    <img alt="GitHub" src="https://img.shields.io/github/license/zsuroy/termuxBot">
  </p>
</div>


# TermuxBot Magisk模块

基于Magisk的开机启动termux模块。

调试设备
+ Nokia X6
+ Android 9.0
+ Qualcomm 636 6+64G

## 安装

目前还未合并至Magisk官方模块仓库，下载[zip](https://github.com/zsuroy/termuxBot/releases)后自行在`Magisk Manager`中从本地安装

## 配置文件(底层)

- `/data/termux/scripts/start.sh` 开机启动脚本

## 使用方法

### 通过命令行

#### 启动停止termuxBot进程
termuxBot 的进程可以通过下面的脚本来进行管理，默认情况下进程将开机自动运行:
```
/data/adb/modules/termux/script/termuxBot.service (start|stop|restart|status)
```


#### 关闭开机自启
在`/data/termux/`目录下新建空白文件`manual`即可
``` shell
touch /data/termux/manaual
```


## 卸载

1. 删除应用 `pm uninstall cn.suroy.autoboot`
2. 在Magisk Manager中停用并删除本插件
3. 删除TermuxBot目录 `rm -rf /data/termux`


## 参考项目

> 首次进行 magisk 模块开发，参考了大佬的项目样板

https://github.com/Magisk-Modules-Repo/v2ray


## 关于作者

[@Suroy](https://suroy.cn)
