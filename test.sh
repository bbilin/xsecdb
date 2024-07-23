# install frontend dependencies
cd client && npm install && npm install --save history
# compile frontend files
npm run compile --force && cd ..

# create logs directory if doesn't exist
mkdir -p logs
touch logs/error.log
touch logs/access.log

# install pip dependencies
pip install -r requirements.txt
# run server
echo $PWD
python main.py
