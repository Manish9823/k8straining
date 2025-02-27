sudo apt update -y
sudo apt install docker.io apt-transport-https ca-certificates curl gpg -y
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo systemctl enable --now kubelet
kubeadm config images list
kubeadm config images pull


# sudo kubeadm init --control-plane-endpoint "dns:6443" --upload-certs --pod-network-cidr 10.244.0.0/16
# sudo kubeadm init --pod-network-cidr 10.244.0.0/16

# export KUBECONFIG=/etc/kubernetes/admin.conf
# kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml

  kubeadm join kube-apiserver.mehmood.us:6443 --token u5duvt.1aq30kr9vjboqznk \
        --discovery-token-ca-cert-hash sha256:028bb9283dcd806a9a8eab1127d8a2886d4a2304946a61d3c8d47bbd352dd846 \
        --control-plane --certificate-key d29a3c7e107871fa03c32dc5c65960733b21800c6e5b1c3f145c072861c55044

kubeadm join kube-apiserver.mehmood.us:6443 --token u5duvt.1aq30kr9vjboqznk \
        --discovery-token-ca-cert-hash sha256:028bb9283dcd806a9a8eab1127d8a2886d4a2304946a61d3c8d47bbd352dd846        