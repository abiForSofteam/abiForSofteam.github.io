ssh-keygen -t ecdsa
sshpass -p 'A26750000b!' ssh -o StrictHostKeyChecking=no -p 22 compareagencesweb@gmailcom

#sshpass -p ${{ secrets.PSWD }} ssh -o StrictHostKeyChecking=no -p 22 ${{ secrets.USER}}@${{ secrets.VPS_IP }} 'cd /home/adam && ./deploy.sh'
