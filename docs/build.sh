#!/bin/bash

# 删除旧的构建输出
rm -rf dist docs

# 创建 dist 目录
mkdir -p dist

# 安装依赖
npm install

# 生成 PDF 到 dist 目录
npx honkit pdf . dist/cryptobook.pdf

# 生成 EPUB 到 dist 目录  
npx honkit epub . dist/cryptobook.epub

# 生成 MOBI 到 dist 目录
npx honkit mobi . dist/cryptobook.mobi

# 构建网站版本到 _book 目录
npx honkit build . docs

echo "✅ 构建完成！"
echo "📄 PDF: dist/cryptobook.pdf"
echo "📚 EPUB: dist/cryptobook.epub" 
echo "📱 MOBI: dist/cryptobook.mobi"
echo "🌐 网站: docs"