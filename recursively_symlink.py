#!/usr/bin/python3
import os

# files inside dst_dir will be symlinked to src_dir's files
def handle_subdir(src_dir, dst_dir):
    subdirs = [f.name for f in os.scandir(src_dir) if f.is_dir()]
    files = [f.name for f in os.scandir(src_dir) if f.is_file()]
    for subdir in subdirs:
        if not os.path.exists(dst_dir + "/" + subdir): os.makedirs(dst_dir + "/" + subdir)
        handle_subdir(src_dir + "/" + subdir, dst_dir + "/" + subdir)
    for file in files:
        if not os.path.exists(os.path.join(dst_dir, file)): os.symlink(os.path.join(src_dir, file), os.path.join(dst_dir, file))

def main():
    subdirs = [f.path for f in os.scandir(os.getcwd()) if f.is_dir()]
    for subdir in subdirs:
        if not os.path.isfile(subdir + "/.dest"): continue
        with open(subdir + "/.dest", 'r') as f: dest = f.readline()

        # remove trailing newline
        dest = dest[:-1]
        # resolve bash variables
        dest = os.path.expandvars(dest)

        if not os.path.exists(dest): os.makedirs(dest)
        handle_subdir(subdir, dest)

if __name__ == '__main__':
    main()
