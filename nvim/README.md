# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Config

### iTerm2

#### 字体设置

需要安装 `nerd font` 字体，否则某些图标显示不正常。

安装完成后在 `iterm2 - profiles - text - font` 里设置对应字体。

```bash
# 这里我还是喜欢这个
brew install --cask font-meslo-lg-nerd-font
```

#### 快捷键冲突

`cmd k`在 iterm2 中是清屏操作。

但是在 lazyvim 的`terminal buffer`中使用`cmd k`会导致界面混乱。

将`cmd k`映射为发送`send hex codes: 0c`即可避免冲突。

> `0c` 即 `ctrl l`

![](https://raw.githubusercontent.com/zzkrix/blog-images/main/assets/2025-08-04-20-39-51-rt3YCn.jpg)

### kitty

> kitty 默认支持 `nerd font`，不需要额外安装字体。

要使`cmd k`在 kitty 终端和 lazyvim 的`terminal buffer`中都有效，需要在 kitty 配置中增加一行：

```bash
map cmd+k send_text all \x0c
```

### 未配置 karabiner 拦截时的快捷键冲突解决

> `karrabiner`拦截`ctrl h/j/k/l`映射成了⬅️/⬇️/⬆️/➡️，习惯了在很多场景下会比较方便，可以减少对原生方向键的使用。

若未使用`karabiner`的拦截，仅需要在`~/.config/nvim/lua/config/autocmds.lua`里增加以下配置即可：

```lua
vim.api.nvim_create_autocmd("TermOpen", {
    callback = function()
        vim.keymap.set("t", "<D-k>", "<C-l>", { buffer = true, noremap = true })
    end,
})
```
