# membuild image dengan nama item-app dengan tag v1 pada direktori saat ini
docker build -t item-app:v1 .
# menampilkan daftar image
docker images
# membuat alias untuk image item-app agar dapat di upload pada github packages
docker tag item-app:v1 ghcr.io/gunzxx/item-app:v1
# membuat environment variabel yaitu PAT untuk menyimpan token github packages
export PAT=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
# melakukan login pada github packages
echo $PAT | docker login ghcr.io --username gunzxx --password-stdin
# melakukan push image ke github packages
docker push ghcr.io/gunzxx/item-app:v1