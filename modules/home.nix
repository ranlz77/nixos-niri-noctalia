{ config, pkgs, ... }:

{
  home-manager.users.ranlz = {
    # Home Manager 需要知道你的 home 目录和 state version
    home.username = "ranlz";
    home.homeDirectory = "/home/ranlz";
    home.stateVersion = "25.05"; # 与 system.stateVersion 保持一致

    # 1. 安装软件包
    programs.starship.enable = true; # Starship 终端提示符
    programs.yazi.enable = true; # 启用 Yazi 文件管理器
    programs.vscode.enable = true; # 启用 VSCode 编辑器 

    home.packages = with pkgs; [
      # Apps
      google-chrome
      obsidian
      

      # 终端 & 编辑器
      kitty

      # 其他
      nerd-fonts.jetbrains-mono
    ];

    # 2. 管理 Dotfiles (配置文件)
    # 将 Niri 的 kdl 配置文件链接到正确的位置
    home.file.".config/niri/config.kdl".source = ./niri/config.kdl;

    # 统一管理会话环境变量
    home.sessionVariables = {
      TERMINAL = "kitty";
      EDITOR = "vim"; # 建议同时设置默认编辑器
    };

    # 3. 使用 Home Manager 模块来配置程序
    programs.git = {
      enable = true;
      userName = "ranlz";
      userEmail = "lzr77165@gmail.com"; # 请修改为你的邮箱
    };


    # 4. 管理主题和外观
    home.pointerCursor = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };
}
