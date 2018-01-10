/*
                                        Git
 git config --global user.name "Yury Shkoda"
 git config --global user.email "email@gmail.com"
 git config --global color.ui true
 git init ~ turn folder into Git repo
 git clone http://...
 git status
    -s ~M(odified), A(dded), D(eleted), R(enamed), C(opied), U(pdated but unmerged), or ? to mean “untracked
 git add .
 git commit ~ (-a stage any changes to tracked files then commit them immediately | -m lets you write a commit message in your Git command rather than using an external editor)
 git commit --amend -m "message" ~ correct commit message
 git branch
            newBranchName
            -a ~ shows all (local and remote)
            -avv ~ show all local and remote branches and which local branches track which upstream changes
            -d(D) branchName ~ to delete branch
            -v ~ shows the list of available branches, with the most recent commit message
            -m newName ~ rename branch
            --merged(--no-merged)
            -r ~ list remote branches
 git checkout newBranchName
 git checkout fileName ~ to revert changes to the last commit, but will destroy uncommited changes
 git merge newBranchName
 git checkout -b somebranch ~ it’s a shortcut that creates a branch and switches to it
 git reset --hard ~ revert all changes to point to the privious commit
 git reset ~ unstage all
 git reset fileName ~ unstage file
 git diff ~ gives you a color-coded list of additions and removals in your unstaged files
 git diff --staged ~ diff including staged files
 git add -p ~ enables "patch add mode", you can select what to do with every changed line
     “y” means “yes, stage this hunk”
     “n” means “no, don’t stage this hunk”
     “q” means “quit, don’t stage this hunk or any others following it”
     “a” means “stage this hunk and any others in the same file”
     “d” means “don’t stage this hunk or any others in the same file”
     “/“ means “search for a hunk that matches a regex”
     “s” means “split up this hunk”
     “e” means “edit this hunk”
     “?” means “print help”
 git rm fileName ~ remove file
    -f ~ delete from repo and filesystem
    --cached ~ delete from repo only
 git log
         -5 ~ 5 most recent commits
         --oneline ~ shows condensed list of recent commits
         --stat (can add fileName) ~ shows how much code was added and removed
         fileName
         --since=1.week
         --author
         -i --grep="some text"
         branchName ^master ~ “to see which changes are in branchName that aren’t in master
git shortlog
             -n
             -sn
 git rebase branchName ~ base current branch on branchName
 git cherry-pick ~ select and apply a single commit from a different branch
 git tag 1.0 -m "Tag version 1.0 from master"
         -n
 git stash ~ lets you save uncommited changes and use it later
           list
           apply(stash@{1}) ~ apply the most recently stashed item and keep it in stash
           pop(stash@{1}) ~ apply the most recently stashed item
           save "Your message"
           -u ~ to stash untracked files too
           --keep-index ~ stashing only unstaged changes
           show( -p)
           drop ~ delete the most recently
           clear ~ delete allч
 git remote add origin ~ to track a remote repository
 git remote remove origin ~ to stop tracking
 git push ~ synchronize your changes with server
          -u origin newBranch - push newBranch to server
          origin --delete branchName ~ will delete remote branch
          origin --tags ~ to push tag
          --forse ~ to force changes into Git, overwriting anything that would have caused conflicts
 git pull ~ download changes from server
          rebase origin ~ it won’t create a merge commit because you’re rebasing your current version on the latest version from the remote repository
 git clean -f ~ will look through entire working directory for files that are not tracked, then  delete them all
           -n ~ will create a report of which untracked files would have been removed, but won’t actually delete them
 .gitignore ~ server.log
              *.log
              !critical.log
              caches/
              build/**/*.exe
              # this is a comment
 */
