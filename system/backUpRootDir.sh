#!bin/zsh
#
# By 13XeNuS37

backupWebRoot ()
{
    tar -cvf - $1 | zip -n .jpg:.gif:.png $2 - 2>> $errorlog &&
        echo -e "\nTarball created!\n"
}
