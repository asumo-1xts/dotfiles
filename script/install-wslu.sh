# GitHub CLIでwslviewを使うためにwsluをインストールする。
# wsluは現在Debian 12までしか対応していない。
# またPPA経由でのインストールが推奨されているが、Debian 13ではadd-apt-repositoryが使えない。
# 以上を踏まえ、手動でリポジトリを追加してDebian 12用をインストールする。

sudo apt install gnupg2 -y
sudo mkdir -p /usr/share/keyrings
curl -sL https://pkg.wslutiliti.es/public.key | sudo gpg --dearmor -o /usr/share/keyrings/wslu-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/wslu-archive-keyring.gpg] https://pkg.wslutiliti.es/debian trixie main" | sudo tee /etc/apt/sources.list.d/wslu.list
sudo sed -i 's/trixie/bookworm/g' /etc/apt/sources.list.d/wslu.list
sudo apt update && sudo apt upgrade -y
sudo apt install wslu -y