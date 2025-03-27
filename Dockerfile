# 使用 Node.js 18 镜像
FROM node:20

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY ./ktpwarp-server /app

# 安装依赖
RUN corepack enable && pnpm install

# 暴露端口（根据实际需要修改端口）
EXPOSE 3000

# 启动项目
CMD ["sh", "-c", "pnpm start && tail -f /dev/null"]
