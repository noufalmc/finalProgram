#!/bin/bash
echo "Enter the length of the array"
read limit;
for((i=0;$i<$limit;i++))
do
     
    read arr[$i];
done
echo "Entered array is" ${arr[@]}
fs=${arr[0]};ss=${arr[1]};fb=${arr[0]};sb=${arr[1]};
function checkMAxMin()
{
  if(($fs>$1))
  then
     ss=$(($fs));
     fs=$(($1));
  elif(($ss>$1))
  then
      ss=$(($1))
   fi      
  if(($fb<$1))
  then
     sb=$(($fb));
     fb=$(($1))
   elif(($sb<$1))
   then
     sb=$(($1))
   fi     
}
for((i=1;$i<${#arr[@]};i++))
do
   checkMAxMin ${arr[$i]};
  
done
echo "second small is $ss"
echo "secon biggest is $sb" 