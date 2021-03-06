{ modulesPath, ... }: {
  imports = [ ./NixOS.nix "${modulesPath}/installer/cd-dvd/iso-image.nix" ];

  isoImage.makeEfiBootable = true;
  isoImage.makeUsbBootable = true;
  networking.networkmanager.enable = true;
  users.users.root.password = "";
}
