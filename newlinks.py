#! python3

'''
Create hard links in ~/ or home directory.
The purpose is to track the .dot file by git and github

Use:

git add .
git commit -m "message"
git push origin master

to update git repo

After you git clone the repo
run $python3 newlinks.py to create hard links in home dir.

Written by George Zhang on 6/8/20

'''

import os
import subprocess

def main():
    abspath = os.path.abspath(__file__) 
    dname = os.path.dirname(abspath)
    os.chdir(dname)

    filenames = os.listdir()

    for f in filenames:
        if os.path.isfile(f) and f.startswith('.') and not f.endswith('.swp'):
            # ln command
            # os module has link and symlink function
            p1 = subprocess.run(f'ln -f {f} ~/{f}', shell=True, capture_output=True) 
            print('running command: ', f'ln -f {f} ~/{f}', end=' --> ')
            if p1.returncode == 0:
                print('Success!')

    print('DONE!!!')   


if __name__ == '__main__':
    main()
