gcloud services enable notebooks.googleapis.com dialogflow.googleapis.com && gcloud notebooks instances create instance-1 --vm-image-project=deeplearning-platform-release --vm-image-family=tf-2-6-cu110-notebooks-debian-10 --machine-type=n1-standard-4 --location=us-east1-b --metadata=report-system-health=true,shutdown-script=/opt/deeplearning/bin/shutdown_script.sh,notebooks-api=PROD,disable-swap-binaries=true,enable-guest-attributes=TRUE,serial-port-logging-enable=true,warmup-libraries=matplotlib.pyplot,framework=TensorFlow:2.6,proxy-mode=service_account,title=TensorFlow2.6/Keras.CUDA11.0.GPU,version=103,restriction=,proxy-url=478901bd60a37adb-dot-us-east4.notebooks.googleusercontent.com && gcloud notebooks instances create instance-2 --vm-image-project=deeplearning-platform-release --vm-image-family=tf-2-6-cu110-notebooks-debian-10 --machine-type=n1-standard-4 --location=us-east1-b --metadata=report-system-health=true,shutdown-script=/opt/deeplearning/bin/shutdown_script.sh,notebooks-api=PROD,disable-swap-binaries=true,enable-guest-attributes=TRUE,serial-port-logging-enable=true,warmup-libraries=matplotlib.pyplot,framework=TensorFlow:2.6,proxy-mode=service_account,title=TensorFlow2.6/Keras.CUDA11.0.GPU,version=103,restriction=,proxy-url=478901bd60a37adb-dot-us-east4.notebooks.googleusercontent.com && gcloud notebooks instances create instance-3 --vm-image-project=deeplearning-platform-release --vm-image-family=tf-2-6-cu110-notebooks-debian-10 --machine-type=n1-standard-4 --location=us-east1-b --metadata=report-system-health=true,shutdown-script=/opt/deeplearning/bin/shutdown_script.sh,notebooks-api=PROD,disable-swap-binaries=true,enable-guest-attributes=TRUE,serial-port-logging-enable=true,warmup-libraries=matplotlib.pyplot,framework=TensorFlow:2.6,proxy-mode=service_account,title=TensorFlow2.6/Keras.CUDA11.0.GPU,version=103,restriction=,proxy-url=478901bd60a37adb-dot-us-east4.notebooks.googleusercontent.com && gcloud notebooks instances create instance-4 --vm-image-project=deeplearning-platform-release --vm-image-family=tf-2-6-cu110-notebooks-debian-10 --machine-type=n1-standard-4 --location=us-east1-b --metadata=report-system-health=true,shutdown-script=/opt/deeplearning/bin/shutdown_script.sh,notebooks-api=PROD,disable-swap-binaries=true,enable-guest-attributes=TRUE,serial-port-logging-enable=true,warmup-libraries=matplotlib.pyplot,framework=TensorFlow:2.6,proxy-mode=service_account,title=TensorFlow2.6/Keras.CUDA11.0.GPU,version=103,restriction=,proxy-url=478901bd60a37adb-dot-us-east4.notebooks.googleusercontent.com && exit
