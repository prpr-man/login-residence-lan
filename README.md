# login-residence-lan
筑波大宿舎のLanにログインするスクリプト

## Usages

1. userinfo.confを設定
```
id: "your id"
password: "your password"
```

1. 新しくplistを作成して，launchdに登録
```
$ cat ~/Library/LaunchAgents/com.login.prpr-man.agent.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>login</string>

    <key>ProgramArguments</key>
    <array>
      <string>YOUR_INSTALL_DIRECTORY/login.rb</string>
    </array>

    <key>StartInterval</key>
    <integer>86400</integer>
</dict>
</plist>
$ launchctl load ~/Library/LaunchAgents/com.login.prpr-man.agent.plist
```

1. 快適宿舎生活
