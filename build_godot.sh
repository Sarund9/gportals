


function end {
    read -n 1 -s -r -p "Press any key to continue"
    exit 1
}

git ls-remote "https://github.com/godotengine/godot" -q

if [ $? != 0 ]
then
    echo "Failed to find local godot repository"
    end
fi

GIT_DIR="https://github.com/godotengine/godot"
# git ls-remote "https://github.com/godotengine/godot"
git rev-parse --git-dir
GDPATH=$?


echo "REPO FOUND: $GDPATH"
end


COPY_TO="$GDPATH/modules/gportals"


cp -r "gportals" $COPY_TO

if [ $? != 0 ]; then
    echo "Copy Directory Failed"
fi

cd $GDPATH

