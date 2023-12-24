#!/usr/bin/env sh

allSuccess=true
planFile=${1}"/scripts/plan.tftest.hcl"
applyFile=${1}"/scripts/apply.tftest.hcl"

testRecordFile=${1}"-TestRecord.md"
echo "" > $testRecordFile
time=$(date -u "+%d %b %Y %H:%M UTC")
echo -e "## $time\n" >> $testRecordFile
version=""

folders=$(find $1/examples -maxdepth 1 -mindepth 1 -type d)
for f in ${folders//,/ }
do  
    success=true
    echo $f
    echo ""
    echo "====> Terraform testing in" $f
    ./terraform -chdir=$f init -upgrade
    echo ""
    echo "----> Plan Testing"
    cp $planFile $f/
    ./terraform -chdir=$f test test -verbose
    if [[ $? -ne 0 ]]; then
        success=false
        allSuccess=false
        echo -e "\033[31m[ERROR]\033[0m: running terraform test for plan failed."
    else
        echo ""
        echo "----> Apply Testing"
        rm -rf $f/plan.tftest.hcl
        cp $applyFile $f/
        ./terraform -chdir=$f test test
        if [[ $? -ne 0 ]]; then
        success=false
        allSuccess=false
        echo -e "\033[31m[ERROR]\033[0m: running terraform test for apply failed."
        fi
        rm -rf $f/apply.tftest.hcl
    fi
    echo -e "- ${f#*/} : $success\n" >> $testRecordFile
    if [[ $version == "" ]]; then
        version=$(./terraform -chdir=$f version)
        row=`echo -e "$version" | sed -n '/^$/='`
        if [ -n "$row" ]; then
            version=`echo -e "$version" | sed -n "1,${row}p"`
        fi  
    fi
done

echo -e "### Versions\n" >> $testRecordFile 
echo -e "${version}" >> $testRecordFile 

if [[ $allSuccess == false ]]; then
    exit 1
fi

exit 0
