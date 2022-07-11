mainPage() {
echo Welcome to the Accountant Program
echo Please enter one option to proceed.
echo
echo  Type "'Exit'" to close the program 
echo  Type "'Sales'" to go to the sales menu
read -p "Type 'Print' to go to print menu: " option
echo
}
mainPage

if [ "$option" == "Exit" ]; then
echo Program closing
echo
exit


elif [ "$option" == "Print" ]; then
printPage() {
echo Please enter one option 
echo Type F to print results to a file
echo Type S to print results to the screen. 
read -p "Type m to go back to the main menu. " user_option

if [ "$user_option" == "F" ]; then
read -p "Type the name of the file: " fname
cat "Database.txt" >> $fname


elif [ "$user_option" == "S" ]; then
cat Database.txt
elif [ "$user_option" == "m" ]; then
clear
mainPage
fi
}
printPage


elif [ "$option" == "Sales" ]; then
salesPage() {
echo Please enter the amount, item code, item price or 
read -p "type m to go back to the main menu. " mOption
if [ "$mOption" == "m" ];then
clear
mainPage
else
read -p "Amount: " amount
read -p "Item Code: " itemCode 
read -p "Item Price: "  itemPrice 
Rprice=$(($itemPrice * $amount))
echo "| " $(date) "Item Code: " $itemCode "Item Price: " $Rprice " |"
echo "| " $(date)"," $itemCode","  $Rprice " |">> Database.txt 
fi
}
salesPage
fi