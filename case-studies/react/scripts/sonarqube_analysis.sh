key=$1
src=$2
version=$3
url=$4
token=$5

echo "Running Analysis on $src with $token sent to $url -> $key"
sonar-scanner \
  -Dsonar.projectKey=$key \
  -Dsonar.projectVersion=$version \
  -Dsonar.sources=$src \
  -Dsonar.inclusions="**/*.js" \
  -Dsonar.host.url=$url \
  -Dsonar.login=$token
