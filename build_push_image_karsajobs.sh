# membuild image dengan nama karsajobs-ui dengan tag latest pada direktori saat ini
docker build -t karsajobs-ui:latest .
# membuat alias untuk image karsajobs-ui agar dapat di upload pada github packages
docker tag karsajobs-ui:latest ghcr.io/gunzxx/karsajobs-ui:latest
# membuat environment variabel yaitu PAT untuk menyimpan token github packages
export PAT=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
# melakukan login pada github packages
echo $PAT | docker login ghcr.io --username gunzxx --password-stdin
# melakukan push image ke github packages
docker push ghcr.io/gunzxx/karsajobs-ui:latest