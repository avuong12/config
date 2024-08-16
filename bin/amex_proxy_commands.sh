# Install proxy commands from https://enterprise-confluence.aexp.com/confluence/display/DBC/Corporate+Proxies.

function proxy_on(){
        export http_proxy=http://proxy.aexp.com:8080
        export https_proxy=http://proxy.aexp.com:8080
        export HTTPS_PROXY=http://proxy.aexp.com:8080
        export HTTP_PROXY=http://proxy.aexp.com:8080
        export NO_PROXY="americanexpress.com,aexp.com,localhost,127.0.0.1"
        export no_proxy="americanexpress.com,aexp.com,localhost,127.0.0.1"
echo -e 'Proxy environment variables set to ON.'
}
function proxy_off(){
        unset http_proxy
        unset https_proxy
        unset HTTPS_PROXY
        unset HTTP_PROXY
echo -e 'Proxy environment variables set to OFF.'
}
function proxy_local(){
        export http_proxy=localhost:3128
        export https_proxy=localhost:3128
        export HTTP_PROXY=localhost:3128
        export HTTPS_PROXY=localhost:3128
        export NO_PROXY="americanexpress.com,aexp.com,localhost,127.0.0.1"
        export no_proxy="americanexpress.com,aexp.com,localhost,127.0.0.1"
echo -e 'Proxy environment variables set to LOCAL.'
}
function proxy_creds(){
        echo -n "Enter Username: "
        read username
        echo -n "Enter your Password: "
        read -s password
        url=http://${username}:${password}@proxy.aexp.com:8080
        export HTTP_PROXY=${url}
        export HTTPS_PROXY=${url}
        export https_proxy=${url}
        export http_proxy=${url}
        export NO_PROXY="americanexpress.com,aexp.com,localhost,127.0.0.1"
        export no_proxy="americanexpress.com,aexp.com,localhost,127.0.0.1"
}