<# PowerShell script to check a user-defined IP address against a list of IPs 
recently used for DDos attacks, published on peerlyst.com

Created by Mattia Campagnano on Thu Jun 14 10:26:25 2018 EDT

The list is available on Peerlyst at the following URL: 
https://www.peerlyst.com/posts/attention-a-new-kind-of-ddos-mark-sitkowski?trk=explore_page_posts_featured_feed_entry

To obtain only the IP addresses, if you have Bash (Windows Subsystem for Linux) installed in Windows 10,
you can use the following command example: 

cat [path-to-your-raw-file] | awk '{print $1}' > IPs.txt

#>
$output= Read-Host -Prompt "Please enter the path to your list file "
$array=Get-Content $output
$ip=Read-Host -Prompt "Enter an IP address "

if ($array -contains $ip){
'Malicious'
} Else {
'No hit found'
}
