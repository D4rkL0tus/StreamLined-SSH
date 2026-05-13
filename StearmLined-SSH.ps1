<#
/*****************************************************\
 * 
 *                SSH KEY AUTOMATION                 
 * 
 * This program is used and creatd to make the setup
 * of SSH public and private keys to be more
 * streamlined and easier for a sysadmin.
 * 
 * Instead of typing and memorizing the commmands
 * you can instead use this program to streamline
 * the processes.
 * 
 * 
 * This program does not have a warrenty if you want
 * to use this tool in your network and infrastructure
 * please be aware that I do not have any responsibility
 * for any damages caused by this software. That is including but
 * not limited to
 * 
 * - Misuse
 * - Incompetance
 * - etc
 * 
 *
 * If you like my stuff please feel free to buy a coffee for me
 * buymeacoffee.com/stuxnet
 * 
 *  
#>

$TimeOut = Start-Sleep(0.5)
function main() {
    Clear-Host
    $Email = Read-Host("Enter your Email: ")
    $TimeOut
    $BitValue = Read-Host("Enter the strength of the key [1024 - 4096]: ")
    $TimeOut

    $Password = Read-Host("Enter the Password: ")
    $TimeOut
    $Location = Read-Host("Enter the Location for Storage: ")
    $TimeOut
    $EncryptionType = Read-Host("Enter the Encryption Type [Ed25519, RSA, ECDSA]: ")
    $TimeOut
    
    
    $SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force

    Write-Host("")

    # Start the program
    Write-Host("<--Follow the prompts given-->")
    $TimeOut

    ssh-keygen -t $EncryptionType -C $Email -N $SecurePassword -f $Location -b $BitValue 
}

main