# install frontend dependencies
cd client 
echo "I managed to go to client folder"
npm install --force 
echo "I managed install"
npm install --force --save history
echo "I managed save history"
# compile frontend files
npm run compile --force 
echo "I managed compile"
cd ..

# create logs directory if doesn't exist
mkdir -p logs
touch logs/error.log
touch logs/access.log

# install pip dependencies
pip install -r requirements.txt
# run server
echo $PWD
python main.py
