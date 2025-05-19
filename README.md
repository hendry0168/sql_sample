This is test README file

To clone:
open cmd
select the folder for repository
  if folder exist, use command to go inside the folder : CD 
    eg. CD "my new folder"
  if folder not exist, use command : mkdir 
    eg. mkdir "my new folder"
use command : git clone
  eg. git clone https://github.com/hendry0168/sql_sample
enter username & pasword (tokens)
  if token not exist, go to https://github.com/settings/personal-access-tokens
  in repository permision, change access to read and write this selected item beow:
    action
    administration
    commit statuses
    contents
    deployments
    pull requests
    repository security advisories
After clone, we can check the folder using command : dir
  eg. dir "my new folder"



To commit & push the new file:

open windows powershell (not cmd)
check the folder if file is exist using command : dir
  eg. dir "my new folder"
use command : git status
  to check any changed/un-commit file
  "untracked files" for file that created in the folder, but not part of repository
use command to add specific file : git add test.sql
  use command : git status, the file status will be : "to be commited"
use command : git commit
  before please enter, add message using command : git commit -m "added as testing"
before push make sure there is token created
  if token not exist, go to https://github.com/settings/personal-access-token
git push
enter email & PAT (personal access token)
