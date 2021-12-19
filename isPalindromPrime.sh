#!/bin/bash

echo "Enter a number"
read a;
function isPrime()
{
  prime=1;
  for((i=2;$i<$1;i++))
  do
    if(($1%$i==0))
    then
        prime=0;
        break;
    fi
  done
  echo $prime;
  
}
function isPalindrome()
{
   rev=0;
   num=$1;
   while(($num>0))
   do
      rem=$(($num%10))
      rev=$(($rev*10+$rem))
      num=$(($num/10))
   done
   echo $rev;
   
}
function print()
{
   if(($1==1))
  then
       
       echo "Its Prime"
  else
       echo "Is not Prime"
  fi
}
prime=$(isPrime $a);
print $prime;
value=$(isPalindrome $a);
res=$(isPrime $value);
if(($value==a))
then
    echo "Palindrome"
else
    echo "not palindrome"
fi
if((value == $a & $res==1))
   then
       echo "Its $a Palindrome Prime"
   else
       echo "Its not prime palindrome"
fi
