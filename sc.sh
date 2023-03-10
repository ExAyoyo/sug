gcloud beta compute machine-images create a1 --source-instance=qwiklabs-bq-copy-vm --source-instance-zone=us-central1-a --storage-location=us && gcloud compute instances delete qwiklabs-bq-copy-vm --zone=us-central1-a && gcloud compute instances create instance-1 --zone=us-east1-b --machine-type=custom-6-5632 --network-interface=network-tier=PREMIUM,subnet=default --metadata=^,@^startup-script=\#\!/bin/bash\ -x$'\n'$'\n'sudo\ apt-get\ update$'\n'sudo\ apt-get\ install\ git\ -y$'\n'sudo\ apt-get\ install\ jq\ -y$'\n'$'\n'export\ HOSTNAME=\$\(hostname\)$'\n'$'\n'\#\ Obtain\ the\ current\ project\ and\ set\ it\ as\ destination$'\n'export\ dest_project=\$\(gcloud\ config\ get-value\ project\)$'\n'$'\n'\#Provide\ specific\ values\ for\ the\ following\ variables$'\n'\#BUCKET=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/bucket\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'\#PREFIX=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/prefix\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'$'\n'\#\ Enable\ DataCatalog\ API$'\n'gcloud\ services\ enable\ datacatalog.googleapis.com$'\n'$'\n'$'\n'\#\ Set\ variables\ referencing\ the\ public\ dataset\ and\ project$'\n'source_project=\'bigquery-public-data\'$'\n'dataset=\'new_york_mv_collisions\'$'\n'table=\'nypd_mv_collisions\'$'\n'location=\'US\'$'\n'$'\n'\#\ Create\ dataset\ in\ current\(destination\)\ project$'\n'bq\ --location=\$location\ mk\ \\$'\n'--dataset\ \\$'\n'--description\ \"description\"\ \\$'\n'\$\{dest_project\}:\$\{dataset\}$'\n'$'\n'\#\ Copy\ data\ from\ public\ dataset,table\ combination\ into\ current\(destination\)\ project$'\n'bq\ --location=\$location\ cp\ \\$'\n'-f\ \\$'\n'\$\{source_project\}:\$\{dataset\}.\$\{table\}\ \\$'\n'\$\{dest_project\}:\$\{dataset\}.\$\{table\}$'\n'$'\n'\#Report\ to\ DM\ on\ successful\ setup\ of\ central\ and\ remote\ clusters$'\n'gcloud\ beta\ runtime-config\ configs\ variables\ set\ success/\$\{HOSTNAME\}\ success\ --config-name\ \$\{HOSTNAME\}-config$'\n' --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/source.full_control --min-cpu-platform=Automatic --tags=http-server,https-server --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-dm=qldm-47681153-994bde034db52c87 --reservation-affinity=any --source-machine-image=a1 && gcloud compute instances create instance-2 --zone=us-east1-b --machine-type=custom-6-5632 --network-interface=network-tier=PREMIUM,subnet=default --metadata=^,@^startup-script=\#\!/bin/bash\ -x$'\n'$'\n'sudo\ apt-get\ update$'\n'sudo\ apt-get\ install\ git\ -y$'\n'sudo\ apt-get\ install\ jq\ -y$'\n'$'\n'export\ HOSTNAME=\$\(hostname\)$'\n'$'\n'\#\ Obtain\ the\ current\ project\ and\ set\ it\ as\ destination$'\n'export\ dest_project=\$\(gcloud\ config\ get-value\ project\)$'\n'$'\n'\#Provide\ specific\ values\ for\ the\ following\ variables$'\n'\#BUCKET=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/bucket\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'\#PREFIX=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/prefix\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'$'\n'\#\ Enable\ DataCatalog\ API$'\n'gcloud\ services\ enable\ datacatalog.googleapis.com$'\n'$'\n'$'\n'\#\ Set\ variables\ referencing\ the\ public\ dataset\ and\ project$'\n'source_project=\'bigquery-public-data\'$'\n'dataset=\'new_york_mv_collisions\'$'\n'table=\'nypd_mv_collisions\'$'\n'location=\'US\'$'\n'$'\n'\#\ Create\ dataset\ in\ current\(destination\)\ project$'\n'bq\ --location=\$location\ mk\ \\$'\n'--dataset\ \\$'\n'--description\ \"description\"\ \\$'\n'\$\{dest_project\}:\$\{dataset\}$'\n'$'\n'\#\ Copy\ data\ from\ public\ dataset,table\ combination\ into\ current\(destination\)\ project$'\n'bq\ --location=\$location\ cp\ \\$'\n'-f\ \\$'\n'\$\{source_project\}:\$\{dataset\}.\$\{table\}\ \\$'\n'\$\{dest_project\}:\$\{dataset\}.\$\{table\}$'\n'$'\n'\#Report\ to\ DM\ on\ successful\ setup\ of\ central\ and\ remote\ clusters$'\n'gcloud\ beta\ runtime-config\ configs\ variables\ set\ success/\$\{HOSTNAME\}\ success\ --config-name\ \$\{HOSTNAME\}-config$'\n' --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/source.full_control --min-cpu-platform=Automatic --tags=http-server,https-server --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-dm=qldm-47681153-994bde034db52c87 --reservation-affinity=any --source-machine-image=a1 && gcloud compute instances create instance-3 --zone=us-east1-b --machine-type=custom-6-5632 --network-interface=network-tier=PREMIUM,subnet=default --metadata=^,@^startup-script=\#\!/bin/bash\ -x$'\n'$'\n'sudo\ apt-get\ update$'\n'sudo\ apt-get\ install\ git\ -y$'\n'sudo\ apt-get\ install\ jq\ -y$'\n'$'\n'export\ HOSTNAME=\$\(hostname\)$'\n'$'\n'\#\ Obtain\ the\ current\ project\ and\ set\ it\ as\ destination$'\n'export\ dest_project=\$\(gcloud\ config\ get-value\ project\)$'\n'$'\n'\#Provide\ specific\ values\ for\ the\ following\ variables$'\n'\#BUCKET=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/bucket\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'\#PREFIX=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/prefix\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'$'\n'\#\ Enable\ DataCatalog\ API$'\n'gcloud\ services\ enable\ datacatalog.googleapis.com$'\n'$'\n'$'\n'\#\ Set\ variables\ referencing\ the\ public\ dataset\ and\ project$'\n'source_project=\'bigquery-public-data\'$'\n'dataset=\'new_york_mv_collisions\'$'\n'table=\'nypd_mv_collisions\'$'\n'location=\'US\'$'\n'$'\n'\#\ Create\ dataset\ in\ current\(destination\)\ project$'\n'bq\ --location=\$location\ mk\ \\$'\n'--dataset\ \\$'\n'--description\ \"description\"\ \\$'\n'\$\{dest_project\}:\$\{dataset\}$'\n'$'\n'\#\ Copy\ data\ from\ public\ dataset,table\ combination\ into\ current\(destination\)\ project$'\n'bq\ --location=\$location\ cp\ \\$'\n'-f\ \\$'\n'\$\{source_project\}:\$\{dataset\}.\$\{table\}\ \\$'\n'\$\{dest_project\}:\$\{dataset\}.\$\{table\}$'\n'$'\n'\#Report\ to\ DM\ on\ successful\ setup\ of\ central\ and\ remote\ clusters$'\n'gcloud\ beta\ runtime-config\ configs\ variables\ set\ success/\$\{HOSTNAME\}\ success\ --config-name\ \$\{HOSTNAME\}-config$'\n' --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/source.full_control --min-cpu-platform=Automatic --tags=http-server,https-server --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-dm=qldm-47681153-994bde034db52c87 --reservation-affinity=any --source-machine-image=a1 && gcloud compute instances create instance-4 --zone=us-east1-b --machine-type=custom-6-5632 --network-interface=network-tier=PREMIUM,subnet=default --metadata=^,@^startup-script=\#\!/bin/bash\ -x$'\n'$'\n'sudo\ apt-get\ update$'\n'sudo\ apt-get\ install\ git\ -y$'\n'sudo\ apt-get\ install\ jq\ -y$'\n'$'\n'export\ HOSTNAME=\$\(hostname\)$'\n'$'\n'\#\ Obtain\ the\ current\ project\ and\ set\ it\ as\ destination$'\n'export\ dest_project=\$\(gcloud\ config\ get-value\ project\)$'\n'$'\n'\#Provide\ specific\ values\ for\ the\ following\ variables$'\n'\#BUCKET=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/bucket\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'\#PREFIX=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/prefix\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'$'\n'\#\ Enable\ DataCatalog\ API$'\n'gcloud\ services\ enable\ datacatalog.googleapis.com$'\n'$'\n'$'\n'\#\ Set\ variables\ referencing\ the\ public\ dataset\ and\ project$'\n'source_project=\'bigquery-public-data\'$'\n'dataset=\'new_york_mv_collisions\'$'\n'table=\'nypd_mv_collisions\'$'\n'location=\'US\'$'\n'$'\n'\#\ Create\ dataset\ in\ current\(destination\)\ project$'\n'bq\ --location=\$location\ mk\ \\$'\n'--dataset\ \\$'\n'--description\ \"description\"\ \\$'\n'\$\{dest_project\}:\$\{dataset\}$'\n'$'\n'\#\ Copy\ data\ from\ public\ dataset,table\ combination\ into\ current\(destination\)\ project$'\n'bq\ --location=\$location\ cp\ \\$'\n'-f\ \\$'\n'\$\{source_project\}:\$\{dataset\}.\$\{table\}\ \\$'\n'\$\{dest_project\}:\$\{dataset\}.\$\{table\}$'\n'$'\n'\#Report\ to\ DM\ on\ successful\ setup\ of\ central\ and\ remote\ clusters$'\n'gcloud\ beta\ runtime-config\ configs\ variables\ set\ success/\$\{HOSTNAME\}\ success\ --config-name\ \$\{HOSTNAME\}-config$'\n' --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/source.full_control --min-cpu-platform=Automatic --tags=http-server,https-server --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-dm=qldm-47681153-994bde034db52c87 --reservation-affinity=any --source-machine-image=a1 && gcloud compute instances create instance-5 --zone=us-east4-c --machine-type=custom-6-5632 --network-interface=network-tier=PREMIUM,subnet=default --metadata=^,@^startup-script=\#\!/bin/bash\ -x$'\n'$'\n'sudo\ apt-get\ update$'\n'sudo\ apt-get\ install\ git\ -y$'\n'sudo\ apt-get\ install\ jq\ -y$'\n'$'\n'export\ HOSTNAME=\$\(hostname\)$'\n'$'\n'\#\ Obtain\ the\ current\ project\ and\ set\ it\ as\ destination$'\n'export\ dest_project=\$\(gcloud\ config\ get-value\ project\)$'\n'$'\n'\#Provide\ specific\ values\ for\ the\ following\ variables$'\n'\#BUCKET=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/bucket\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'\#PREFIX=\`curl\ \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/prefix\"\ -H\ \"Metadata-Flavor:\ Google\"\`$'\n'$'\n'\#\ Enable\ DataCatalog\ API$'\n'gcloud\ services\ enable\ datacatalog.googleapis.com$'\n'$'\n'$'\n'\#\ Set\ variables\ referencing\ the\ public\ dataset\ and\ project$'\n'source_project=\'bigquery-public-data\'$'\n'dataset=\'new_york_mv_collisions\'$'\n'table=\'nypd_mv_collisions\'$'\n'location=\'US\'$'\n'$'\n'\#\ Create\ dataset\ in\ current\(destination\)\ project$'\n'bq\ --location=\$location\ mk\ \\$'\n'--dataset\ \\$'\n'--description\ \"description\"\ \\$'\n'\$\{dest_project\}:\$\{dataset\}$'\n'$'\n'\#\ Copy\ data\ from\ public\ dataset,table\ combination\ into\ current\(destination\)\ project$'\n'bq\ --location=\$location\ cp\ \\$'\n'-f\ \\$'\n'\$\{source_project\}:\$\{dataset\}.\$\{table\}\ \\$'\n'\$\{dest_project\}:\$\{dataset\}.\$\{table\}$'\n'$'\n'\#Report\ to\ DM\ on\ successful\ setup\ of\ central\ and\ remote\ clusters$'\n'gcloud\ beta\ runtime-config\ configs\ variables\ set\ success/\$\{HOSTNAME\}\ success\ --config-name\ \$\{HOSTNAME\}-config$'\n' --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/source.full_control --min-cpu-platform=Automatic --tags=http-server,https-server --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-dm=qldm-47681153-994bde034db52c87 --reservation-affinity=any --source-machine-image=a1 && exit
