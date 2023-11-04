
## Deploy Eshanized-Archrepo

Follow The **Steps** to Deploy **eshanized-archrepo** .

**Step - 1 : Receive gpg key from the server**

```bash
gpg --recv-keys 2CADFC6E0C98B1A6455DE18F367A7C1EB14D188D
```
Or use the short key:

```bash
gpg --recv-keys 367A7C1EB14D188D
```

**Step - 2 : Configure pacman**
```bash
sudo pacman-key --recv-keys 2CADFC6E0C98B1A6455DE18F367A7C1EB14D188D
```

**Step - 3 : It’s recommended to verify the fingerprint** (Optional)
```bash
sudo pacman-key --finger 2CADFC6E0C98B1A6455DE18F367A7C1EB14D188D
```
**Step - 4 : locally sign the key**
```bash
sudo pacman-key --lsign-key 2CADFC6E0C98B1A6455DE18F367A7C1EB14D188D
```

**Step - 5 : Configure pacman.conf**
```bash
sudo nano /etc/pacman.conf
```

**Step - 6 : Add server pacman.conf**
```bash
[eshanized-archrepo]
SigLevel = Never
Server = https://eshanized.github.io/$repo/$arch
```

**Step - 7 : Save The Configuration by pressing ctrl+x**
