function glg --wraps='git log --oneline' --description 'alias glg=git log --oneline'
  git log --oneline $argv; 
end
