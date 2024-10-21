sudo apt-get install git curl build-essential cmake ffmpeg sqlite3 ttf-mscorefonts-installer libmagick++-dev libvips-dev libzxingcore-dev
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate
cd ~
git clone --recursive https://github.com/esmBot/esmBot
cd esmBot
pnpm install
pnpm build
cp .env.example .env
pnpm start
