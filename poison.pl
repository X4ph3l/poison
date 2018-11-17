#!/usr/bin/perl
#Poison T00l 
#By : X4ph3l


use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;
  
 
print color 'bold bright_green';
 
print q{

	
                                __
                                XX
  _________        ______       ~~     _______         ______      ___.    ___.
  XXXXXXXXX.     ,gXXXXXX.      XX    ,XXXXXXXs      ,gXXXXXX.     XXXi    XXX
  XXXXXXXXXX.  ,dXXXXXXXXXs     XX   iXXXXXXXXXi    iXXXXXXXXXX_   XXXb    XXX
  XXX~~~XXXXX  XXXXX~ ~~XXXX.   XX  XXXX~   XXXX   iXXXX~`'~XXXXi  XXXXs   XXX
  XXX    dXXX  XXX       XXXX   XX  XXXXXs_  '~~   XXX`      XXXX  XXXXXb !XXX
  XXX___XXXXX iXXX!       XXX   XX   XXXXXXXXXs   iXXX        XXX  XXX XXi XXX
  XXXXXXXXXX`  XXX.       XXX   XX    ~XXXXXXXXX   XXX        XXX  XXX'XXX XXX
  XXXXXXXXX`   XXX       XXXX   XX  ____ '~XXXXXb  XXX       XXXX  XXX !XXbXXX
  XXX          XXXb     gXXX!   XX  XXXX      XXX  XXXb     gXXX   XXX  'XXXXX
  XXX          XXXXXXXXXXXXf    XX  ~XXXXX_gXXXX!  'XXXXXXXXXXXX`  XXX   !XXXX
  XXX           ~XXXXXXXXX`     XX    XXXXXXXXX~    'XXXXXXXXX`    XXX    XXXX
  ~~~              ~~X~~`      '~~`     XXXXX~         ~~X~~`      ~~~    '~~~`
                   ~                  ~~~~~            ~

                                                            

                  Poison T00l
                  By : X4ph3l & Parad0x Team'z                                           

       --------------------------------------- 
             [POISON TOOL MADE BY X4PH3L]          :. https://mirror-h.org/search/hacker/28208/ .:
       ---------------------------------------   
};


 
print color 'bold bright_green';
@iphost=$ARGV[0] || die "Usage : ./poison.pl  [Targets IP] \n        ./poison.pl  [domain] \n        ./poison.pl  [host] \n \n";
my @ip = inet_ntoa(scalar gethostbyname("@iphost")or die "IP or Host invalid!\n");
my @hn = scalar gethostbyaddr(inet_aton(@ip),AF_INET);
 
my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/@ip"); # JSON API OF IP-API.COM
    my $json = $GET->content();
 
 
my $info = decode_json($json);
my $info = decode_json($json);
# Json API Response :
# A successful request will return, by default, the following:
#{
#    "status": "success",
#    "country": "COUNTRY",
#    "countryCode": "COUNTRY CODE",
#    "region": "REGION CODE",
#    "regionName": "REGION NAME",
#    "city": "CITY",
#    "zip": "ZIP CODE",
#    "lat": LATITUDE,
#    "lon": LONGITUDE,
#    "timezone": "TIME ZONE",
#    "isp": "ISP NAME",
#    "org": "ORGANIZATION NAME",
#    "as": "AS NUMBER / NAME",
#   "query": "IP ADDRESS USED FOR QUERY"
# }
# INFOS OF JSON API ...
 
print color 'bold bright_white';
print "     [!] IP: ", $info->{'query'}, "\n";
print color 'bold bright_red';
print "-----------------------------------------\n"; 
print color 'bold bright_green';
print "     [+] ORG: ", $info->{'as'}, "\n";
print "     [+] ISP: ", $info->{'isp'}, "\n";
print "     [+] Country: ", $info->{'country'}," - ", $info->{'countryCode'}, "\n";
print "     [+] Region: ", $info->{'regionName'}, " - " , $info->{'region'}, "\n";
print "     [+] City: ", $info->{'city'}, "\n";
print color 'red';
print q{     [!] Location: Might not be accurate 
}; "\n";
print color 'bold bright_blue';
print "     [+] Geo: ", "Latitude: " , $info->{'lat'}, " - Longitude: ", $info->{'lon'}, "\n";
print "     [+] Geolocation: ", "Lat: " , $info->{'lat'}, " - Lat: ", $info->{'lat'}, "\n";
print color 'bold bright_green';
print "     [+] Timezone: ", "timezone: " , $info->{'timezone'}, " - Long: ", $info->{'timezone'}, "\n";
print "     [+] As number/name: ", "as: " , $info->{'as'}, " - Long: ", $info->{'as'}, "\n";
print "     [+] ORG name: ", $info->{'as'}, "\n";
print "     [+] Country code: ", $info->{'countryCode'}, "\n";
print color 'bold bright_red';
print "     [+] Status: ", $info->{'status'}, "\n"; 
print "\n";
# EOF
