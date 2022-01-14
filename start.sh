if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Samantha-a/SAMANTHA.01.git /SAMANTHA.01
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SAMANTHA.01
fi
cd /SAMANTHA.01
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
