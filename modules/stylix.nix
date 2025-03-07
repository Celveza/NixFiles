{ stylix, inputs, user, ... }:
{
  stylix = {
    enable = true;
    autoEnable = false;
    targets = {
      plymouth.enable = true;
      regreet.enable = true;
};

    image = ./lock.jpg;
};
}
