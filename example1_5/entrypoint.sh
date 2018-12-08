echo "slapd slapd/internal/adminpw password ${LDAP_ADMIN_PASSWORD}" | debconf-set-selections
echo "slapd slapd/internal/generated_adminpw password ${LDAP_ADMIN_PASSWORD}" | debconf-set-selections
echo "slapd slapd/password1 password ${LDAP_ADMIN_PASSWORD}" | debconf-set-selections
echo "slapd slapd/password2 password ${LDAP_ADMIN_PASSWORD}" | debconf-set-selections
echo "slapd slapd/domain string ${LDAP_DOMAIN}" | debconf-set-selections
echo "slapd shared/organization string ${LDAP_ORGANISATION}" | debconf-set-selections
dpkg-reconfigure -f noninteractive slapd
service slapd start

#add custom schema
ldapadd -Y EXTERNAL -H ldapi:// -f /etc/ldap/schema/custom_inetorgperson.ldif

/bin/bash
