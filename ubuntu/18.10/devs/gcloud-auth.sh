
echo ">>> GCLoud activate service account"
gcloud auth activate-service-account --key-file $GCP_KEY_FILE

echo ">>> GCLoud set kube cluster"
gcloud container clusters get-credentials $GCP_KUBE_CLUSTER --zone=$GCP_ZONE

echo ">>> GCLoud docker login"
gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://asia.gcr.io
