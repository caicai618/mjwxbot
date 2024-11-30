FROM alpine:latest

# 安装基础依赖
RUN apk --no-cache add ca-certificates

# 设置工作目录
WORKDIR /app

# 将二进制文件和必要资源复制到容器
COPY mj_gen .
COPY config ./config

# 设置默认命令
CMD ["./mjwxbot"]