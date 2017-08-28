zip -r templates.zip templates/
aws s3 cp --recursive templates/ "s3://cloud-formation-templates.kepingwang/templates" --acl public-read
for f in website.yaml templates.zip
do
    aws s3 cp $f "s3://cloud-formation-templates.kepingwang" --acl public-read
done

