newCommitHash=$1
oldCommitHash=$(cat stack.yaml | grep "shared-kernel" -A 1 | grep "commit:" | awk '{print $2}')
echo "replacing " $oldCommitHash " with " $newCommitHash
sed "s/$oldCommitHash/$newCommitHash/g" "stack.yaml" > "tmpFile"
mv "tmpFile" stack.yaml
sed "s/$oldCommitHash/$newCommitHash/g" "stack-hie.yaml" > "tmpFile"
mv "tmpFile" "stack-hie.yaml"

