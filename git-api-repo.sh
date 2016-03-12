function set-git-token(){
  git config --global --add user.token $1;
}

function unset-git-token(){
  git config --global --unset user.token;
}

function get-git-token(){
  git config --global --get user.token;
}

function make-repo(){
  local token=$(git config --global --get user.token);
  if [ -n "$token" ]; then
    curl -u "LunarArcanus:$token" https://api.github.com/user/repos -d "{\"name\":\"$1\"}";
    echo -e "\e[92mRepository $1 created";
  else
    echo -e "\e[91mPlease set a token first";
  fi
}
