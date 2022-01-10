1. Install nvim
```
sudo pacman -S nvim
```

2. Configure
```
./install.sh
```

3. Install plugins
```
nvim
:PlugInstall
```

4. Set nvim as default editor
```
Set into /home/mario/.profile and exit session: export EDITOR=/usr/bin/nvim
```

For eslint to work execute the following command (inside project)
```
:CocCommand eslint.createConfig
```

For prettier to work execute the following command (inside project)
```
npm install --save-dev prettier-eslint
```
