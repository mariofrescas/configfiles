1. Install nvim
```
sudo pacman -S nvim
```

2. Configure
```
./install.sh
```

3. Set nvim as default editor
```
Set into /home/mario/.profile and then exit session: export EDITOR=/usr/bin/nvim
```

4. Java Development

Open the next file:
```
$HOME/.local/share/nvim/mason/packages/jdtls/bin/jdtls.py
```

Add the nex line whithin the 'main' function as an 'os.execvp' parameter:
```
"-javaagent:/usr/local/share/lombok/lombok.jar"
```

Just like this:
```
os.execvp(java_executable,
  ...
  "-Dosgi.checkConfiguration=true",
  "-javaagent:/usr/local/share/lombok/lombok.jar",
  "-Dosgi.sharedConfiguration.area=" + str(shared_config_path),
  ...
```
