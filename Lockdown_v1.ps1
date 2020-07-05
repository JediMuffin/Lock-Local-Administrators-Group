#master list 
$array1 = gc "C:\Users\usbufv00\Desktop\AdminLockdown\mainlist.txt"

#current list
$group = Get-LocalGroupMember "administrators" | Select Name
$group = $group.name
$array2 = $group
$index = 0
$hit = @(1..5)


function remove-unauthorized{
   foreach ($ctr1 in $array2){
   $pass_value = 0 

   #recursive query
   foreach ($ctr2 in $array1){
       $ctr1
       $query = $ctr1.equals($ctr2)
       $query
       if($ctr1.equals($ctr2)){
       $pass_value = 1
       }
       #get pass value
   }

  $pass_value
  if($pass_value.Equals(0)){
    Remove-LocalGroupMember -Group "Administrators" -Member $ctr1 
        }
    }
}

function add-authorized{
    foreach ($ctr2 in $array1){
   $pass_value = 0 

   #recursive query
   foreach ($ctr1 in $array2){
       $ctr1
       $query = $ctr1.equals($ctr2)
       $query
       if($ctr1.equals($ctr2)){
       $pass_value = 1
       }
       #get pass value
   }

  $pass_value
  if($pass_value.Equals(0)){
    Add-LocalGroupMember -Group "Administrators" -Member $ctr2  
        }
    }
}


#call functions here
add-authorized
remove-unauthorized