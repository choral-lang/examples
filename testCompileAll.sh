echo "Compiling HelloRoles"
choral epp -t java -s choral/hello-roles HelloRoles

echo "Compiling BiPair"
choral epp -t java -s choral/bipair BiPair

echo "Compiling RemoteFunction"
choral epp -t java -s choral/remote-function RemoteFunction

echo "Compiling ConsumeItems"
choral epp -t java -s choral/consume-items ConsumeItems

echo "Compiling DiffieHellman"
choral epp -t java --headers=choral/diffie-hellman -s choral/diffie-hellman DiffieHellman

echo "Compiling Buyer Seller Shipper"
choral epp -t java --headers=choral/buyer-seller-shipper:choral/runtime -s choral/buyer-seller-shipper BuyerSellerShipper

echo "Compiling DistAuth"
choral epp --headers=choral/distributed-authentication:choral/runtime:choral/choralUnit -t java -s choral/distributed-authentication DistAuth

echo "Compiling Karatsuba"
choral epp --headers=choral/karatsuba:choral/choralUnit:choral/runtime -t java -s choral/karatsuba Karatsuba

echo "Compiling Mergesort"
choral epp --headers=choral/mergesort:choral/choralUnit:choral/runtime -t java -s choral/mergesort Mergesort

echo "Compiling Quicksort"
choral epp --headers=choral/quicksort:choral/choralUnit:choral/runtime -t java -s choral/quicksort Quicksort

echo "Compiling Vitals Streaming"
choral epp --headers=choral/vitals-streaming:choral/choralUnit:choral/runtime -t java -s choral/vitals-streaming VitalsStreaming