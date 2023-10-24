
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/phoenix-monarch/idk.git /idk
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /idk
fi
cd /idk
pip3 install -U -r requirements.txt
echo "Starting bot..."
python3 bot.py
