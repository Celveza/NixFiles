{
  programs.gallery-dl = {
    enable = true;
    settings = {
      extractor = {
        twitter = {
          cookies = ["firefox"];
        };
      };
    };
  };
}
