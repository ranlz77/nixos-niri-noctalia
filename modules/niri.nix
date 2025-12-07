{ config, pkgs, ... }:

{

# niri设置
programs.niri.enable = true;

environment.systemPackages = with pkgs; [
   fuzzel # Fuzzel 作为 Niri 的核心组件，保留在系统层面是合理的
  ];
}
