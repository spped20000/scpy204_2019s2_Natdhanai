coun = '[China Japan Singapore South Korea Hong Kong Taiwan Macau Italy Iran France Germany china japan singapore south korea hong kong taiwan macau italy iran france germany]'
sym = '[1 2 3 4 5]'
echo "Welcome to COVID-19 checker"
echo "Please enter information for analysis."
read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter your gender: " gender
read -p " Have you ever been to high-risk countries as below?
China, Japan, Singapore, South Korea, Hong Kong, Taiwan, Macau, Italy, Iran
France, Germany: " country
read -p " Do you have the symptoms below?
1 = Fever 2 = Sore Throat 3 = Cough 4 = More than one symptom 5 = None of these symptoms
Please write a number in your case: " sym1
if [[ $country =~ $coun ]] ; then
a='1'
fi
if ! [[ $sym1 -eq 5 ]] ; then
b='1'
fi
if [ $a -eq 1 ] && [ $b -eq 1 ] ; then
echo "Please go to see a doctor right away!! You are at risk of Covid-19."
else
echo "Congratulation! You are free from Covid-19."
fi