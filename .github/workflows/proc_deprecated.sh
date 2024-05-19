#!/bin/bash

# This script is used to generate the list of all the deprecated apps in the manifest
# It will generate a list of all the apps that are deprecated in the manifest
# It will also estimate which of the apps were deprecated more than x months ago
# It will create a branch and create commits removing each of the deprecated apps
# It will create a PR for the branch and assign it to the user who ran the script and deb-get-devs 
# for review

# get the current date
current_date=$(date +%Y%m%d)
# get the current branch
current_branch=$(git rev-parse --abbrev-ref HEAD)
# get the current user
current_user=$(git config user.email)
# get the current user name
current_user_name=$(git config user.name)   

app_list=$(grep  "^#" 01-main/manifest )
# strip the # from the app names
app_list=$(echo $app_list | sed 's/#//g')
#for each app in the list get the time the line was last modified
for app in $app_list
do
    # get the last time the app was modified
    last_modified=$(git log -1 --format="%ai" -- 01-main/manifest | grep $app | awk '{print $1}')
    # get the number of months since the app was last modified
    months_since_modified=$(echo $(( ( $(date --date="$current_date" +%s) - $(date --date="$last_modified" +%s) )/(60*60*24*30) )))
    # if the app was last modified more than 6 months ago
    if [ $months_since_modified -gt 6 ]
    then
        # add the app to the list of apps that are deprecated
        deprecated_apps="$deprecated_apps $app"
    fi
done



if [ -z "$deprecated_apps" ]
then
    echo "No deprecated apps found"
    exit 0
fi

# create a new branch for the changes
git checkout -b remove_deprecated_apps-${current_date}

for app in $deprecated_apps
do
    # remove the app from the manifest
    sed -i "/${app} /d" 01-main/manifest
    # remove the app definition
    git rm 01-main/packages/${app}
    # commit the change
    git commit -am "chore: Removed ${app} from the manifest as it was deprecated more than 6 months ago"
done

# create a PR for the branch
#hub pull-request -m "chore: Remove deprecated apps" -b deb-get:main -h deb-get:remove_deprecated_apps-${current_date}
gh pr create --title "chore: Remove deprecated apps" --body "This PR removes the following deprecated apps from the manifest: $deprecated_apps" --base main --head remove_deprecated_apps-${current_date}
# assign the PR to the user who ran the script and deb-get-devs
gh pr edit --assignee $current_user_name,deb-get-devs
# switch back to the original branch    
git checkout $current_branch
# cleanup

#git branch -D remove_deprecated_apps-${current_date}
 

