ENV="$1"

if [ -z "$1" ]; then
  echo "No environment selected; using default"
  ENV="default"
fi
echo "Building for environment $ENV"


rm -rf deployment || true

for d in ./templates/**/*; do

    filename=$(dirname $d)
    if [[ -d $filename ]]; then

    foldername=`echo $(basename $filename)`
    folderaltered=$(echo $foldername | sed 's/templates/deployment/g')
    mkdir -p deployment/$folderaltered
    newpath=$(echo $d | sed 's/templates/deployment/g')
    echo $newpath
    vortex --template $d --output $newpath -varpath ./environments/$ENV.yaml
  fi
done
