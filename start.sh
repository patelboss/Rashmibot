if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/patelboss/Rashmika_mandanana_bot/blob/patelboss-patch-3/ /rashmi
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /rashmi
fi
cd /rashmi
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
