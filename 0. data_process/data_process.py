## refactor files

## **_fltRaws.json goes to ./data/Raw/fltRaws
## **_logRaws.csv goes to ./data/Raw/logRaws
## ** userinfo.json goes to ./data/Raw/userinfo

dir = './data/Raw/'

import os

def get_files(dir):
    files = []
    for file in os.listdir(dir):
        if file.endswith(".json") or file.endswith(".csv"):
            files.append(file)
    return files

files = get_files(dir)

for file in files:
    if file.endswith("_userinfo.json"):
        os.rename(dir+file, './data/Raw/userinfo/'+file)
    elif file.endswith("_fltRaws.json"):
        os.rename(dir+file, './data/Raw/fltRaws/'+file)
    elif file.endswith("_logRaws.csv"):
        os.rename(dir+file, './data/Raw/logRaws/'+file)
