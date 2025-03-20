# Emby-icon-collection

本项目是一些 Emby 图标库集合，提供直连代理加速链接（图标也替换成直连代理加速链接了）

## 诞生缘由

本人用的 Emby 服都是直连可用的，但图标无法直连访问，所以借助公益 GitHub 代理加速处理了一下大佬们整理的图标集，现在图标也可以直连访问啦~

> Github Proxy：`https://ghfast.top` 或 `https://gh-proxy.com`

## 每月 15 日 21: 45 更新

考虑到图标不常更新，所以 Cron 定了每月更新一次。

### 离歌 emby 专属图标库（适用fileball Senplayer）

```
https://raw.githubusercontent.com/lige47/QuanX-icon-rule/refs/heads/main/lige-emby-icon.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/lige47/QuanX-icon-rule/lige-emby-icon.json
```

> 仓库地址：[lige47/QuanX-icon-rule](https://github.com/lige47/QuanX-icon-rule)


### 白糖自用Emby图标

#### 圆形

```
https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Yuan/tubiao.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/baiitang/Sakura/Fileball/Yuan/tubiao.json
```

#### 方形

```
https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Fang/tubiao.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/baiitang/Sakura/Fileball/Fang/tubiao.json
```

> - 仓库地址：[baiitang/Sakura](https://github.com/baiitang/Sakura)
> - 频道链接：[https://t.me/PiPi32l/25](https://t.me/PiPi32l/25)

### Gikerwan

```
https://raw.githubusercontent.com/ginibond/ginibond/main/Icons/emby/tubiao.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/ginibond/ginibond/Icons/emby/tubiao.json
```

> - 仓库地址：[ginibond/ginibond](https://github.com/ginibond/ginibond)
> - 频道链接：[https://t.me/Gikerwan/11](https://t.me/Gikerwan/11)


### Softlyx 自用Emby图标

#### 圆形

```
https://raw.githubusercontent.com/Softlyx/Fileball/main/YUAN/tubiao.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/Softlyx/Fileball/YUAN/tubiao.json
```

#### 方形

```
https://raw.githubusercontent.com/Softlyx/Fileball/main/FANG/tubiao.json
```

直连加速：

```
https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/Softlyx/Fileball/FANG/tubiao.json
```

> 仓库地址：[Softlyx/Fileball](https://github.com/Softlyx/Fileball)


## 直连代理加速替换实现教程

### 替换原理

```shell
echo $(curl $ICON_SRC_URL | sed "s|https://raw.githubusercontent.com|https://ghfast.top/https://raw.githubusercontent.com|g") | sed "s|https:\\\/\\\/raw.githubusercontent.com|https:\\\/\\\/ghfast.top\\\/https:\\\/\\\/raw.githubusercontent.com|g" > $ICON_PATH
```

### 例子

以白糖方形图标包为例：

URL 为 [https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Fang/tubiao.json](https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Fang/tubiao.json)
- 👉 PATH=`baiitang/Sakura/Fileball/Fang/tubiao.json`
- 👉 最终结果=[https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/baiitang/Sakura/Fileball/Fang/tubiao.json](https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/baiitang/Sakura/Fileball/Fang/tubiao.json)

完整命令如下：

```shell
ICON_SRC_URL="https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Fang/tubiao.json"
ICON_PATH="baiitang/Sakura/Fileball/Fang/tubiao.json"
mkdir $(dirname $ICON_PATH) -p
echo $(curl $ICON_SRC_URL | sed "s|https://raw.githubusercontent.com|https://ghfast.top/https://raw.githubusercontent.com|g") | sed "s|https:\\\/\\\/raw.githubusercontent.com|https:\\\/\\\/ghfast.top\\\/https:\\\/\\\/raw.githubusercontent.com|g" > $ICON_PATH
FINAL_ICON_PATH="https://ghfast.top/https://raw.githubusercontent.com/RebornQ/Emby-icon-collection/refs/heads/main/$ICON_PATH"
echo $FINAL_ICON_PATH
```

把以上命令封装成脚本 `gh-proxy-url-replacer.sh` 后调用：

```shell
./gh-proxy-url-replacer.sh https://raw.githubusercontent.com/baiitang/Sakura/main/Fileball/Fang/tubiao.json baiitang/Sakura/Fileball/Fang/tubiao.json
```

#### Github Actions 脚本参考链接

> 1. [fanmingming/live/blob/main/.github/workflows/epg.yml](https://github.com/fanmingming/live/blob/main/.github/workflows/epg.yml)
> 2. [yuanzl77/IPTV/blob/main/.github/workflows/main.yml](https://github.com/yuanzl77/IPTV/blob/main/.github/workflows/main.yml)
> 3. [github action GITHUB_TOKEN 的使用，不用添加秘钥直接提交到当前仓库](https://neucrack.com/p/385)
> 4. [remote: Write access to repository not granted. fatal: unable to access](https://stackoverflow.com/questions/70538793/remote-write-access-to-repository-not-granted-fatal-unable-to-access)


## 感谢

感谢以上图标包作者的付出~
