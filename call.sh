function call(){termux-contact-list |jq '.[] | .name|=ascii_downcase|select(.name=="'$1'")|.number'| xargs -I{} termux-telephony-call {};}
