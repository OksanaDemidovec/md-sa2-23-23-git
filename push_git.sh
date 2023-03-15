#!bash
#Get list of remote repositories
list_remote=$(git remote)
for remote_rep in list_remote
do
# Push changes in remote repositorie
git push remote_rep
done
