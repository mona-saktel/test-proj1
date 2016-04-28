#### This script creates Tarball of the Github code and uploads the Tarball in Softlayer Object Storage Container.

#Create the Tar ball of the code.
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
new_fileName='build'.$current_time.'tar'
echo "new filename : $new_fileName"
tar -cvf $new_fileName *

#Upload the Tarball.
authUser="SLOS552583-3:pravin.saktel_cm"
authKey="ddb067ce59fc918e719afb4d6ca6f35fef59e9d9ed674dbc3dd6b787db0fcde3"
authToken=$(curl -i -H "X-Auth-User: $authUser" -H "X-Auth-Key: $authKey" https://dal05.objectstorage.softlayer.net/auth/v1.0 | grep X-Auth-Token: | awk -F':' '{print $2}')
curl -X PUT -T $new_fileName  -H "X-Auth-Token: $authToken" https://dal05.objectstorage.softlayer.net/v1/AUTH_fc406ffd-5ac0-4af8-8200-4e7d8779fece/JenkinsBuild/$new_fileName
