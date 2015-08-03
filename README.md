# login-residence-lan
筑波大宿舎のLanにログインするスクリプト

## Usages

1.userinfo.confを設定
```
id: "your id"
password: "your password"
```

2.新しくplistを作成して，launchdに登録
```
$ cat ~/Library/LaunchAgents/com.login.prpr-man.agent.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.login.prpr-man.agent</string>

    <key>ProgramArguments</key>
    <array>
      <string>YOUR_INSTALL_DIRECTORY/login.rb</string>
    </array>

    <key>StartCalenderInterval</key>
    <dict>
      <key>Hour</key>
      <integer>0</integer>
      <key>Minute</key>
      <integer>0</integer>
    </dict>
</dict>
</plist>
$ launchctl load ~/Library/LaunchAgents/com.login.prpr-man.agent.plist
$ launchctl start com.login.prpr-man.agent
```

3.快適宿舎生活
