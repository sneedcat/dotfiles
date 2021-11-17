{ config, pkgs, home, ... }: {
  programs.chromium = {
    enable = true;
    package = pkgs.chromium;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      {
        id = "ilcacnomdmddpohoakmgcboiehclpkmj";
        updateUrl =
          "https://raw.githubusercontent.com/FastForwardTeam/releases/main/update/update.xml";
      }
      {
        id = "dcpihecpambacapedldabdbpakmachpb";
        updateUrl =
          "https://raw.githubusercontent.com/iamadamdev/bypass-paywalls-chrome/master/src/updates/updates.xml";
      }
      { id = "hlepfoohegkhhmjieoechaddaejaokhf"; }
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }
      { id = "kcgpggonjhmeaejebeoeomdlohicfhce"; }
      { id = "fhcgjolkccmbidfldomjliifgaodjagh"; }
      { id = "jinjaccalgkegednnccohejagnlnfdag"; }
      { id = "lckanjgmijmafbedllaakclkaicjfmnk"; }
    ];
  };

}
