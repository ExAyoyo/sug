gcloud services enable notebooks.googleapis.com && gcloud notebooks instances create instance-1 --vm-image-project=deeplearning-platform-release --vm-image-family=tf2-ent-2-5-cpu --machine-type=custom-6-5632 --location=us-central1-a && gcloud notebooks instances create instance-2 --vm-image-project=deeplearning-platform-release --vm-image-family=tf2-ent-2-5-cpu --machine-type=custom-6-5632 --location=us-west1-b && gcloud notebooks instances create instance-3 --vm-image-project=deeplearning-platform-release --vm-image-family=tf2-ent-2-5-cpu --machine-type=custom-6-5632 --location=europe-north1-a && gcloud notebooks instances create instance-4 --vm-image-project=deeplearning-platform-release --vm-image-family=tf2-ent-2-5-cpu --machine-type=custom-6-5632 --location=europe-west1-b && gcloud notebooks instances create instance-5 --vm-image-project=deeplearning-platform-release --vm-image-family=tf2-ent-2-5-cpu --machine-type=custom-6-5632 --location=us-west1-b && exit
