# membuild image dengan nama karsajobs dengan tag latest pada direktori saat ini
docker build -t karsajobs:latest .
# membuat alias untuk image karsajobs agar dapat di upload pada github packages
docker tag karsajobs:latest ghcr.io/gunzxx/karsajobs:latest
# membuat environment variabel yaitu PAT untuk menyimpan token github packages
export PAT=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
# melakukan login pada github packages
echo $PAT | docker login ghcr.io --username gunzxx --password-stdin
# melakukan push image ke github packages
docker push ghcr.io/gunzxx/karsajobs:latest