# Sort XML
xsltproc ../utils/sortXml3.xslt nifiTemplate.xml > n.xml
xmllint --format n.xml > nifiTemplate.xml

# Sort JSON
jq -S -f ../utils/normalize.jq feed.json > f.json
python -m json.tool f.json > feed.json
