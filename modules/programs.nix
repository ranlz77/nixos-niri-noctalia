{ config, pkgs, ... }:

{

# 启用 yazi 文件管理器

  # 基本系统工具
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    fastfetch
    btop
 ];
}
