### 🍍使用我们的新版 Bolo Docker 套件快速部署

## 本仓库中附带的 `bolo.zip` 是最新版的 Bolo ，请放心搭建！

## 请完整阅读整篇文档，以确保完整正确的 Bolo 构建！

1. 克隆当前仓库内全部文件：`git clone https://github.com/AdlerED/bolo-docker`
2. 进入 `bolo-docker` 文件夹，编辑 `config.sh` 文件（文件内含有注释解释）
3. 在 `bolo-docker` 文件夹内部署 Bolo ：`docker build -t "bolo" .`
4. 部署完成后，可以运行 Bolo 了：`docker run -it -d --name bolo -p8080:8080 bolo /run.sh`
5. 运行成功！试着在浏览器中访问你的 Bolo 博客吧！

**提示** 如果你在 `config.sh` 中修改了端口号，请将第四步的两个 `8080` 都改成你修改后的端口号。

## 更新 Bolo

你可以直接 [从这里](https://github.com/AdlerED/bolo-solo/releases) 下载 Bolo 最新版的压缩包，并将压缩包文件名修改为 `bolo.zip`，替换 `bolo-docker` 中的 `bolo.zip` 文件，然后在 `bolo-docker` 文件夹下输入以下命令重新部署并运行 Bolo ：

```
docker kill bolo
docker rm bolo
docker rmi bolo
docker build -t "bolo" .
docker run -it -d --name bolo -p8080:8080 bolo /run.sh
```

## 其它信息（非必须）

#### 进入 Bolo 的虚拟容器：

```
docker exec -it bolo /bin/sh
```
