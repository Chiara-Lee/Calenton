# 合并配置文件
echo "Merging configuration files..."

echo "" > config.yaml
for file in author.yaml markup.yaml menu.yaml params.yaml related.yaml; do
    if [[ -f "$file" ]]; then
        echo "---" >> config.yaml
        cat "$file" >> config.yaml
        echo "Merged $file"
    else
        echo "Warning: $file not found."
    fi
done

# 确认 config.yaml 是否生成成功
if [[ -f "config.yaml" ]]; then
    echo "config.yaml successfully generated."
else
    echo "Error: config.yaml was not generated." >&2
    exit 1
fi

# 运行 Hugo 构建
echo "Running Hugo build..."
hugo --minify --baseURL $DEPLOY_PRIME_URL

# 删除合并的 config.yaml 文件
echo "Cleaning up merged config.yaml..."
rm config.yaml

