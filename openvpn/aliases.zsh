alias disconnect-vpn="killall openvpn"
alias htb-vpn='openvpn $CTF/htb/borari.ovpn &'
alias offsec-vpn-oscp='openvpn --config $OFFSEC/oscp/lab-connection/offsec.ovpn --auth-user-pass $OFFSEC/oscp/lab-connection/pass.txt &'
alias offsec-vpn-pg='openvpn --config $OFFSEC/proving_grounds/vpn/vpn_config.ovpn --auth-user-pass $OFFSEC/proving_grounds/vpn/pass.txt &'
