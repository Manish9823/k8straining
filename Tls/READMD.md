export DOMAIN_NAME=mehmood.us

export USER_ASSIGNED_IDENTITY_NAME=cert-manager-mehmood-us

az identity create --name "${USER_ASSIGNED_IDENTITY_NAME}" -g k8stest0009

export USER_ASSIGNED_IDENTITY_CLIENT_ID=$(az identity show --name "${USER_ASSIGNED_IDENTITY_NAME}" --query 'clientId' -o tsv -g k8stest0009)

az role assignment create --role "DNS Zone Contributor" --assignee $USER_ASSIGNED_IDENTITY_CLIENT_ID --scope $(az network dns zone show --name $DOMAIN_NAME -o tsv --query id -g k8stest0009)

export SERVICE_ACCOUNT_NAME=cert-manager 

export SERVICE_ACCOUNT_NAMESPACE=cert-manager 

export SERVICE_ACCOUNT_ISSUER=$(az aks show --resource-group k8stest0009 --name k8stest0009 --query "oidcIssuerProfile.issuerUrl" -o tsv)

az identity federated-credential create \
  --name "cert-manager" \
  --identity-name "${USER_ASSIGNED_IDENTITY_NAME}" \
  --issuer "${SERVICE_ACCOUNT_ISSUER}" \
  --subject "system:serviceaccount:${SERVICE_ACCOUNT_NAMESPACE}:${SERVICE_ACCOUNT_NAME}" \
  -g k8stest0009