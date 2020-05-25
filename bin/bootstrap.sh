#!/usr/bin/env bash

sedOsxFixture=$(sed --version > /dev/null 2>&1 || echo '.bak')

booleanQuestionMark() {
  echo "$1: [yes/no]"
  for ((;;))
  do
    read remove_rfc
    if [[ "$remove_rfc" == "yes" ]];
    then
      return 0
    fi
    if [[ "$remove_rfc" == "no" ]];
    then
      return 1
    fi
    echo "Please enter yes or no"
  done
}

echo "Github Organization Name:"
read org_name

echo "Repository Name:"
read repository_name

echo "Contact in case of abuse report:"
read contact

sed -i $sedOsxFixture "s/\$PROJECT_NAME/$repository_name/g" book.toml
sed -i $sedOsxFixture "s/\$ORG/$org_name/g" book.toml
sed -i $sedOsxFixture "s/\$REPO/$repository_name/g" book.toml
sed -i $sedOsxFixture "s/\$CONTACT_METHOD/$contact/g" src/misc/code-of-conduct.md

if booleanQuestionMark "Did you want remove rfc example?";
then
  git rm src/rfcs/0000-awesome-rfc-template.md
fi
