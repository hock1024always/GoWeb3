# 定义可执行文件名称
BINARY_NAME=GoWeb3
# 默认目标
all: build

# 构建目标
build:
	go build -o $(BINARY_NAME) main.go

# 运行目标
run: build
	./$(BINARY_NAME)

# 清理目标
clean:
	rm -f $(BINARY_NAME)

# 运行测试
test:
	go test ./...

# 运行格式化
fmt:
	go fmt ./...

# 运行静态检查（如果需要）
lint:
	golangci-lint run

.PHONY: all build run clean test fmt lint