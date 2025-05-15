import os

res = "{ config, pkgs, ... }:\n{\n\thome.file = {\n\t\t#tmux\n"

def list_files_recursive(directory):
    global res

    for root, dirs, files in os.walk(directory):
        for file in files:
            if root == "../home-manager/dotfiles/tmux-stuff": continue
            if root == "../home-manager/dotfiles/tmux-stuff/tmux/plugins/tmux-resurrect/docs": continue
            if ".git" in root.split("/"): continue
            if ".git" in file: continue
            if file == ".gitignore": continue
            if file == ".gitattributes": continue
            if file == ".gitmodules": continue
            if file == ".travis.yml": continue
            if file == "CHANGELOG.md": continue
            if file == "CONTRIBUTING.md": continue
            if file == "LICENSE.md": continue
            if file == "license": continue
            if file == "README.md": continue
            if file == "readme.md": continue

            real_loc = root.split("../home-manager/dotfiles/tmux-stuff/tmux/")[1]
            #print("\t\t\".tmux/" + real_loc + "/" + file + "\".source = " + root + "/" + file)
            res += "\t\t\".tmux/" + real_loc + "/" + file + "\".source = " + root + "/" + file + ";\n"

# Replace with your desired directory path or prompt the user
if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        directory = input("Enter the directory path: ")
    else:
        directory = sys.argv[1]
    
    if os.path.isdir(directory):
        list_files_recursive(directory)
        res += "\t};\n}"
        print(res)
        f = open("../home-manager/modules/tmux.nix", "w")
        f.write(res)
        f.close()
    else:
        print(f"'{directory}' is not a valid directory.")

