# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Config

### 字体设置

需要安装 `nerd font` 字体，否则某些图标显示不正常。

安装完成后在 `iterm2 - profiles - text - font` 里设置对应字体。

```bash
# 这里我还是喜欢这个
brew install --cask font-meslo-lg-nerd-font
```

### 快捷键冲突

`cmd k`在 iterm2 中是清屏操作。

但是在 lazyvim 的浮窗 terminal 中使用`cmd k`会导致界面混乱。

将`cmd k`映射为发送`send hex codes: 0c`即可避免冲突。

> `0c` 即 `ctrl l`

![](https://raw.githubusercontent.com/zzkrix/blog-images/main/assets/2025-08-04-20-39-51-rt3YCn.jpg)
