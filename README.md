Simple tool to speed up install of required applications on new laptops

=============================


Steps:

1. Open "apps.bat"
2. Download the right version of each app/dependency
3. Run Windows Update
4. Run all the installers
5. Disable Windows 11 execution alias for python and python3
6. Restart
7. Run the Windows 11 Debloater

8. Install wsl
    wsl --install -d Ubuntu


=== LINUX setup =============

9. Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
 Confirm it installed properly with
    nvm --version

10. Install latest stable version of Node.js (includes npm)
    nvm install --lts
 Verify install
    node -v
    npm -v

11. Install Yarn
    npm install -g yarn
 Verify install
    yarn -v


=== WINDOWS setup ===========

9. Install nvm (nvm-setup.exe)
    https://github.com/coreybutler/nvm-windows/releases

10. Open PowerShell and install the latest stable version of Node.js (includes npm)
    nvm install latest
    nvm use <version>
 Verify install
    node -v
    npm -v

11. Install Yarn
    npm install --global yarn
 Verify install
    yarn -v
