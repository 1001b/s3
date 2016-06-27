#!/bin/sh

for i in `aws s3 ls`
do  
  #delete s3 buckets from patterns
  case $i in 
    *pattern1*|*pattern2*) 
      aws s3 rb "s3://$i" #append --force for non-empty buckets
      ;;
    *)
  esac
done
